# rshiny


#### Table of Contents

1. [Description](#description)
2. [InstallationGoals]
    * [main Depenancies]
    * [secondary parts]

## Description
The Goal of this module is to install and setup rshiny from start to finish. 
Rshiny is a bit of a bear to install.  There are many dependancies. 

## InstallationGoals 

1. Install the base requirements Red Hat specific.
This module works with RHEL and Centos. It may not work with Debian. 
In the future it should work with Debian. 

yum install epel-release
yum install httpd
yum install mod_proxy_html
yum install libxml2-devel.x86_64
yum install R -y

#install rshiny server packages

sudo su - \
-c "R -e \"install.packages('shiny', repos='https://cran.rstudio.com/')\""

Alternative RPM Way. 

wget https://download3.rstudio.org/centos6.3/x86_64/shiny-server-1.5.12.933-x86_64.rpm
sudo yum install --nogpgcheck shiny-server-1.5.12.933-x86_64.rpm


for Ref:  A short overview of the generated parts can be found in the PDK documentation at https://puppet.com/pdk/latest/pdk_generating_modules


### Beginning with rshiny

The very basic steps needed for a user to get the module up and running. This can include setup steps, if necessary, or it can be an example of the most basic use of the module.

## Usage

Include usage examples for common use cases in the **Usage** section. Show your users how to use your module to solve problems, and be sure to include code examples. Include three to five examples of the most important or common tasks a user can accomplish with your module. Show users how to accomplish more complex tasks that involve different types, classes, and functions working in tandem.

## Reference

This section is deprecated. Instead, add reference information to your code as Puppet Strings comments, and then use Strings to generate a REFERENCE.md in your module. For details on how to add code comments and generate documentation with Strings, see the Puppet Strings [documentation](https://puppet.com/docs/puppet/latest/puppet_strings.html) and [style guide](https://puppet.com/docs/puppet/latest/puppet_strings_style.html)

If you aren't ready to use Strings yet, manually create a REFERENCE.md in the root of your module directory and list out each of your module's classes, defined types, facts, functions, Puppet tasks, task plans, and resource types and providers, along with the parameters for each.

For each element (class, defined type, function, and so on), list:

  * The data type, if applicable.
  * A description of what the element does.
  * Valid values, if the data type doesn't make it obvious.
  * Default value, if any.

For example:

```
### `pet::cat`

#### Parameters

##### `meow`

Enables vocalization in your cat. Valid options: 'string'.

Default: 'medium-loud'.
```

## Limitations

In the Limitations section, list any incompatibilities, known issues, or other warnings.

## Development

In the Development section, tell other users the ground rules for contributing to your project and how they should submit their work.

## Release Notes/Contributors/Etc. **Optional**

If you aren't using changelog, put your release notes here (though you should consider using changelog). You can also add any additional sections you feel are necessary or important to include here. Please use the `## ` header.
