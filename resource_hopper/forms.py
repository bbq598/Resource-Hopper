from django import forms
from .models import Resource, Skill, ResourceSkill, Project

class EnterResource(forms.ModelForm):
	class Meta:
		model = Resource
		fields = ('resource_fname', 'resource_lname', 'timezone_id', 'language_id')
		labels = {
			"resource_fname": "First Name",
			"resource_lname": "Last Name",
			"timezone_id": "Timezone",
			"language_id": "Language",
		}


class SelectSkill(forms.ModelForm):



	class Meta:
		model = ResourceSkill
		fields = ('resource_id', 'skill_id', 'resource_skill_level')
		labels = {
			"resource_id": "Resource",

		}



class BuildTeam(forms.Form):
	SKILLS = (
		("1", "CS633 - Requirements"),
		("2", "CS633 - PM"),
		("3", "CS633 - Coding"),
		("4", "CS633 - Testing"),
		("5", "CS633 - UX"),
	)
	skills = forms.MultipleChoiceField(widget=forms.CheckboxSelectMultiple,choices=SKILLS,label="Select Required Skills")

class AddTeam(forms.ModelForm):

	class Meta:
		model = Project
		fields = ('project_description',)
		labels = {
			"project_description": "Enter a New Team Name",
		}



#	fname = forms.CharField()
#	lname = forms.CharField()
#	language = forms.ChoiceField(choices = [('english', 'English'), ('spanish', 'Spanish')])
#	timezone = forms.ChoiceField(choices = [('+11', '+11'), ('+12', '+12')])