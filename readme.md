# Sew Unique

This is a simple landing page website for Sew Unique.

This site provides basic functionality for viewing photo galleries and
getting in touch with the companies owner.

## Setup

To run this project simply follow these steps:

1. Clone the repository
2. Run `bundle install`
3. Run `bundle exec rake db:migrate`
4. Run `rails s`

The code runs on the native rails port `3000`.

## Testing

To run the test:

`bundle exec rspec spec`

## Deployment

To deploy:

1. Get your public key added by Jordan.
2. Get the AWS credentials from Jordan and put them in a file named `.env` at the root of this project.

The `.env` file should look like:

    AWS_ACCESS_KEY_ID=mykey
    AWS_SECRET_ACCESS_KEY=mysecret

To deploy:

    bundle exec rake devops:deploy

To administer the server (update packages or apply new ssh keys):

    bundle exec rake devops:admin

# TODO

## Content

1. Hero unit image
2. 3 content images
3. About me image
4. 10 gallery images
5. Tagline
6. Email, phone, hours, and address information
7. Offer blurb
8. 3 content blurbs
9. Biography
