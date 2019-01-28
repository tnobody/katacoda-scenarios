In this Tutorial you are going to learn how to test an HTTP/Rest driven application with [Citrus Framework](https://citrusframework.org/). One benefit of htis Framework is, that it tests systems based on messages and protocals. This makes the tests independet from the implementation technology of the system under test. You'll now test a HTTP-Api wich is written in Javascript and running on nodejs in an Openshift-cluster.

But first things first: You need a running system under test in order to test it.

We prepared a simple api-application on [Github](https://github.com/tnobody/todo-example-api.git) which you'll deploy on openshift in this step.

Thanks to Openshifts capabilites to deploy applications from a Dockerfile this requires only a few steps.

First of all you need a Openshift Project, so execute 

`
oc new-project todo-api-sut
`{{execute}}

to create a new Project __todo-api-sut__ in Openshift (this project is automatically set as your active project).

Now you can deploy he application by the Dockerfile directly from Github.

`
oc new-app https://github.com/tnobody/todo-example-api.git --name=todo-api --image-stream=openshift/nodejs:latest
`{{execute}}

This will create the application on Openshift. To have access to this application as an endpoint you have to create a Route with:

`
oc expose svc/todo-api
`{{execute}}
