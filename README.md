<<<<<<< HEAD
# klusters

## Summary

## Development To-Do
- Integrate Zurb Foundation

- Add authentication and user profiles

- Add file upload functionality

- Use Amazon Web Services for blob storage

## Project References

References will be added on an ongoing basis as the project progresses:

- Authentication: Adding Authentication with Devise: http://guides.railsgirls.com/devise/

- Front end Design: Foundation 5  http://foundation.zurb.com/ 

- Public Datasets: http://aws.amazon.com/datasets?_encoding=UTF8&jiveRedirect=1

					

=======

Initial Proposal For Winter Quarter Independent Rails App
=========================================================

Klusters: Chris Billingham, Jon Faulkenberry, David Baynes
----------------------------------------------------------

Date: Tuesday January 21, 2014
-------------------------------

We propose Klusters, a document sharing social network with an added twist:
the documents are self-organizing using unsupervised learning! In other words,
we want documents to cluster according to topic without tagging or deliberate human
intervention on the part of the user. Pictures of pandas are clustered in one directory;
South Park videos in another; essays on Proust in another, all by analyzing the media digitally.

### Starting Out

> First step

We aim to create a Rails App that allows the user to upload their own documents to a shared library
and keep and copy documents to a private library. 

We'll start out simple - just images will be enough for now.

> Second Step

We create a document repository in some cloud-based service, most likely S3.
Using other AWS serices such as EC2, VPC, EMR, DynamoDB, etc (or more) we will create a 
back-end process either in Ruby or Java to handle some serious number crunching (e.g. principal
component analysis, neural networks, something cooler). The sharing site is really jsut an excuse for us to play around with some rad machine learning algorithms.

### Maturing

> Further Steps for Next Quarter

Assuming this all goes well, we'll keep working on this through next quarter adding other features.
The main one which comes to mind would be a file-based search graph. For example, search for an image NOT based on crude key words but on an image key! Submit a picture of a panda and the engine goes off searching for other pictures of of pandas. Submit a picture of the sky and a picture from Picasso and it returns pictures of the Blue Man Group. The possibilties are truly astounding!
>>>>>>> Commit of README.md draft

