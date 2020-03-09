<#import "../layout.ftl" as layout>

<@layout.standardPage; section>
    <#if section = "scripts">
    <#-- javascript tags go in here -->
    </#if>
    <#if section = "styles">
    <#-- Import your stylesheets here -->
    </#if>
    <#if section="content">
        <div class="container">
            <form enctype="multipart/form-data" action="/event/create" method="post">
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="eventTitle">Event Title</label>
                        <input id="eventTitle" name="title" type="text" class="form-control" placeholder="Event Title">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="eventSociety">Society</label>
                        <input id="eventSociety" name="society" type="text" class="form-control" placeholder="Society">
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-12">
                        <label for="eventDescription">Event Description</label>
                        <input id="eventDescription" name="description" type="text" class="form-control"
                               placeholder="Description">
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-12">
                        <label for="image">Event Description</label>
                        <input id="image" name="image" type="file" class="form-control"
                               placeholder="Upload">
                    </div>
                </div>
                <button type="submit" class="btn btn-primary">Create event</button>
            </form>
        </div>
    </#if>
</@layout.standardPage>