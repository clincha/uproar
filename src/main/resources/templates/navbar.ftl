<#macro s   navbar>
    <nav>
        <div class="menu-icon">
            <i class="fa fa-bars fa-5x"></i>
        </div>
        <div class="logo">
            UpRoar
        </div>
        <div class="menu">
            <ul>
                <li><a href="/ticket/myTickets">My Tickets</a></li>
                <li><a href="/event/myEvents">My Events</a></li>
                <li><a href="/user/societies">My Societies</a></li>
                <li><a href="/user/settings">Settings</a></li>
                <#-- <li><a href="/${login.inout}">Log ${login.inout}</a></li> but for now-->
                <li><a href="/login">Log In</a></li>
            </ul>
        </div>
    </nav>
</#macro>