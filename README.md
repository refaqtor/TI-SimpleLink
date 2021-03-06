# TI SimpleLink LaunchPad Application
This repository holds the Exosite assets and application code that setup the Ti SimpleLink LaunchPad experience on Exosite's Murano platform. This code can be cloned and deployed on its own or added to your Murano account through [Exosite Exchange](https://www.exosite.io/business/exchange/catalog#/?_k=dnrhld).

In here you will find a list of requirements and step-by-step instructions to deploy this application and connect your development kit to it. Just connecting your kit requires little effort, and can be done very quickly. If you would like to deploy a dasboard to view your device's data, you will need to install a few tools and run some commands in your machine's terminal.

## Repository Contents

* Specification of the SimpleLink LaunchPad represented as a Murano Product. /specs/*
* A modified [Freeboard](https://freeboard.io) application put into a Murano Application configuration.
* Setup intructions on how to get starting with your kit and this application.

The source code for the application running on your SimpleLink device can be found here: {Link}

## Requirements

* TI SimpleLink LaunchPad {link to the dev kit on TI's site}
* An account on [exosite.io](https://exosite.io)
* Exosite's Solultion deployment tool [MuranoCLI](https://github.com/exosite/muranocli)
* [Git](https://git-scm.com/)

## Setup Instructions

### Getting your Murano account ready for the development kit to connect to.

* Log into your account on [exosite.io](https://exosite.io) and navigate to [the Exchange page](https://www.exosite.io/business/exchange/catalog).
* Click on the Element named "TI SimpleLink LaunchPad -- Product" and add it to Exhange Catalog. This will make the Product specification availble for you to use.
* Navigate back to [your Solutions page](https://www.exosite.io/business/solutions) and add a Product by clicking on the "+ NEW SOLUTION" button and choosing the "Add a Product" option.
* In the "Create New Solution" form, select the new Product specification you added by choosing "TI SimpleLink LaunchPad" as your Solution starting point. Choose a name that makes sense to you and complete the Product process by clicking "ADD".
* Click on your new SimpleLink Product and copy your Product Id to your machine's clipboard. You will use this value to configure your development kit to connect to Murano.
* Click on the Product's "SETTINGS" Tab and click on the check box "Allow development devices to connect" then click the "SAVE" button on the bottom of the page.

### Configuring and using your kit.

* Connect to the kit via serial cable
* Input the Product Id generated by Murano
* Run the embedded application
* Go to the "DEVICES" Tab in your Product and look for your device to appear in the UI. You may need to refresh your page.
* Click on your device and see that data is being sent by your SimpleLink LaunchPad to Murano.
* Click on the pencil near the resource named ```led``` and input 'on' or 'off' to toggle the D1 LED on your kit.

### Deploying the dashboard application.

* Create a new blank Murano Solution Application by clicking on the "+ NEW SOLUTION" button and choosing the "Add an Application" option.
* In the "Create New Solution" form, select "Start from Scratch" as your Solution starting point. Choose a submain name that that is unique and complete the Application process by clicking "ADD".
* Clone this repository ```git clone https://github.com/exosite/TI-SimpleLink``` using git. This will put a copy of all of the code here on your machine.
* Initialize the repository in order to prepare it for deployment to Murano with the [MuranoCLI tool](https://github.com/exosite/muranocli) by running the init command in your terminal ```$ murano init```. It will ask you to sign in, just input your credentials like you were logging into [exosite.io](https://exosite.io). 
* Type 'y' when the tool warns you about unknown files, they won't hinder the deployment process.
* Put the application code into your Murano Application Solution with ```$ murano syncup```.
* Click on your new Application's host name and view your device's data.

Fin

## Where can I get help?

* [Exosite's community forum](https://community.exosite.com)
* [TI's engineer to engineer forum](https://e2e.ti.com/)

If this is your first time using Murano, have questions or just plain need help, take a look at our [community forum](https://community.exosite.com)