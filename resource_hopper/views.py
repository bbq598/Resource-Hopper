from django.shortcuts import render
from django.http import HttpResponse
from .models import ProjectTeam
from .models import Resource
from .models import ResourceSkill
from .models import Skill
from .forms import EnterResource, SelectSkill, BuildTeam, AddTeam

def teams(request):
	context = {
		'projectteams': ProjectTeam.objects.all(),
		'resource': Resource.objects.all(),
		'skill': Skill.objects.all(),
		'resourceskill': ResourceSkill.objects.all(),
		'addteam': AddTeam(),

	}

	if request.method == 'POST':
		addteam_form = AddTeam(request.POST)
		if addteam_form.is_valid():
			addteam_form.save()

	return render(request, 'resource_hopper/teams.html', context)

def resource(request):
	context = {
		'resourceform': EnterResource(),
		'skillform': SelectSkill()
	}

	if request.method == 'POST':
		resource_form = EnterResource(request.POST)
		skill_form = SelectSkill(request.POST)
		if resource_form.is_valid():
			print("VALID RESOURCE")
			resource_form.save()
		if skill_form.is_valid():
			print("VALID SKILL")
			skill_form.save()


#	resourceform = EnterResource()
	return render(request, 'resource_hopper/resource.html', context)


def buildteam(request):
	context = {
		'buildteam': BuildTeam(),
		#'selected_skills': selected_skills,
	}	

	if request.method == 'POST':
		form = BuildTeam(request.POST)
		if form.is_valid():
			selected_skills = form.cleaned_data['skills']
			matched_skills = ResourceSkill.objects.none()
			for d in selected_skills:
				#matched_skills = ResourceSkill.objects.filter(skill_id=d)
				matched_skills = matched_skills | ResourceSkill.objects.filter(skill_id=d)
			context = {
				'buildteam': BuildTeam(),
				'matched_skills': matched_skills,
			}

		
		#print(type(matched_skills_test))
		#print(matched_skills_test)



	return render(request, 'resource_hopper/buildteam.html', context)




def home(request):
	return HttpResponse('<h1>Home Page</h1>')


