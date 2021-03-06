<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div ng-controller="editMeetCtrl">
    <md-progress-circular md-mode="indeterminate" ng-hide="load" style="margin:  auto;"></md-progress-circular>
    <div class="mdl-grid" ng-show="load" style="padding: 0;">
        <div class="mdl-cell mdl-cell--2-col"></div>
        <div class="mdl-cell mdl-cell--8-col" style="margin-top: 0;">
            <div class="mdl-card mdl-card mdl-shadow--2dp" style="width: 100%; ">
                <md-content layout-padding>
                    <div style="overflow: hidden">
                        <form name="userForm">

                            <!-- Meet img -->
                            <div layout="row">
                                <div class="img-teaser"
                                     style="width: 40%; margin: auto; position:relative; display:table;">
                                    <img style="width: 100%;" src="../image/meet1.jpg">
                                    <button class="figcaption mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab mdl-button--primary mdl-js-ripple-effect">
                                        <i class="material-icons">file_download</i>
                                    </button>
                                </div>
                            </div>

                            <!-- Meet title -->
                            <md-input-container class="md-block">
                                <label>Title</label>
                                <md-icon class="material-icons">title</md-icon>
                                <input ng-model="meet.title">
                            </md-input-container>

                            <!-- Types -->
                            <div layout-gt-xs="row">
                                <md-input-container mg-no-float class="md-block" flex-gt-xs>
                                    <label>Type</label>
                                    <md-select ng-model="meet.type" id="type">
                                        <md-option value="types[0]" ng-repeat="type in types track by type.type_id ">
                                           {{type.name}}
                                        </md-option>
                                    </md-select>
                                </md-input-container>

                                <md-input-container class="md-block" flex-gt-xs>
                                    <label>Date type</label>

                                    <md-select ng-model="meet.date_type" id="date_type">
                                        <md-option value="Single" selected>
                                            Single
                                        </md-option>
                                        <md-option value="Vote">
                                            Vote
                                        </md-option>
                                    </md-select>
                                </md-input-container>

                                <!--Meet date -->
                                <md-datepicker ng-model="meet.time"
                                               style="margin-top: 14px"
                                               md-placeholder="Enter date"></md-datepicker>
                            </div>


                            <!-- Meet aims -->
                            <md-input-container class="md-block">
                                <md-icon class="material-icons">golf_course</md-icon>
                                <label>Aims</label>
                                <md-icon class="material-icons"></md-icon>
                            </md-input-container>
                            <p style="margin-top: 30px"></p>
                            <md-input-container class="md-block" style=" margin-bottom: 0; margin-top: 0"
                                                ng-repeat="aim in aims">
                                <label></label>
                                <md-icon class="material-icons mdl-cell--hide-phone"></md-icon>
                                <input ng-model="aim.value">
                                <md-icon class="material-icons" style="color:#ef6c00; cursor: pointer"
                                         ng-click="removeAim(aim)">delete
                                </md-icon>
                            </md-input-container>
                            <md-input-container class="md-block" style="margin-bottom: 0; margin-top: 0" md-no-float>
                                <md-icon class="material-icons"></md-icon>
                                <input ng-model="aim" placeholder="aim">
                                <md-icon class="material-icons" style="color:#ef6c00; cursor: pointer"
                                         ng-click="createAim()">add
                                </md-icon>
                            </md-input-container>

                            <!-- Meet Location -->
                            <md-input-container class="md-block">
                                <label>Location</label>
                                <md-icon class="material-icons">location_on</md-icon>
                                <input ng-model="meet.location">
                            </md-input-container>

                            <!-- Meet description -->
                            <md-input-container class="md-block">
                                <label>Description</label>
                                <md-icon class="material-icons">description</md-icon>
                                <input ng-model="meet.description">
                            </md-input-container>
                            <div layout="row">
                                <div flex>
                                    <p style="text-align: center">
                                        <button class="mdl-button mdl-js-button mdl-button--raised  mdl-js-ripple-effect"
                                                ng-click="cancel()">
                                            Cancel
                                        </button>
                                    </p>
                                </div>
                                <div flex>
                                    <p style="text-align: center">
                                        <button class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored  mdl-js-ripple-effect"
                                                style=" background-color: #2e7d32;"
                                                ng-click="save()">
                                            Save
                                        </button>
                                    </p>
                                </div>
                            </div>
                        </form>

                    </div>
                </md-content>
            </div>
        </div>
    </div>
</div>