<!-- Left side column. contains the logo and sidebar -->
<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- Sidebar Menu -->
        <ul class="sidebar-menu">
            <li class="header">{{ trans('menus.backend.sidebar.general') }}</li>

            <li class="{{ active_class(Active::checkUriPattern('admin/dashboard')) }}">
                <a href="{{ route('admin.dashboard') }}">
                    <i class="fa fa-dashboard"></i>
                    <span>{{ trans('menus.backend.sidebar.dashboard') }}</span>
                </a>
            </li>

            <li class="header">{{ trans('menus.backend.sidebar.system') }}</li>

            @permission('view-access-management')
            <!---<li class="{{ active_class(Active::checkUriPattern('admin/access/*')) }} treeview">
                <a href="#">
                    <i class="fa fa-users"></i>
                    <span>{{ trans('menus.backend.access.title') }}</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>

                
            </li>-->
            @endauth
            @permission('view-page')
            <li class="{{ active_class(Active::checkUriPattern('admin/pages*')) }}">
                <a href="{{ route('admin.pages.index') }}">
                    <i class="fa fa-file-text"></i>
                    <span>{{ trans('labels.backend.pages.title') }}</span>
                </a>
            </li>
            @endauth
            @permission('edit-settings')
            <li class="{{ active_class(Active::checkUriPattern('admin/settings*')) }}">
                <a href="{{ route('admin.settings.edit', 1 ) }}">
                    <i class="fa fa-gear"></i>
                    <span>{{ trans('labels.backend.settings.title') }}</span>
                </a>
            </li>
            @endauth
            <!---<li class="{{ active_class(Active::checkUriPattern('admin/modules*')) }}">
                <a href="{{ route('admin.modules.index') }}">
                    <i class="fa fa-gear"></i>
                    <span>{{ trans('generator::menus.modules.management') }}</span>
                </a>
            </li>-->


            @permission('view-test-permission')
            <li class="{{ active_class(Active::checkUriPattern('admin/faqs*')) }}">
                <a href="{{ route('admin.events.index')}}">
                    <i class="fa fa-question-circle"></i>
                    <span>{{ trans('Events') }}</span>
                </a>
            </li>
            @endauth


            @permission('view-company-permission')
            <li class="{{ active_class(Active::checkUriPattern('admin/faqs*')) }}">
                <a href="{{ route('admin.companies.index')}}">
                    <i class="fa fa-building-o"></i>
                    <span>{{ trans('Company') }}</span>
                </a>
            </li>
            @endauth
            @permission('view-user-management')
            <li class="{{ active_class(Active::checkUriPattern('admin/faqs*')) }}">
                <a href="{{ route('admin.users.index')}}">
                    <i class="fa fa-user"></i>
                    <span>{{ trans('Employee Management') }}</span>
                </a>
            </li>
            @endauth

            @permission('view-template-permission')
            <li class="{{ active_class(Active::checkUriPattern('admin/faqs*')) }}">
                <a href="{{ route('admin.templates.index')}}">
                    <i class="fa fa-user"></i>
                    <span>{{ trans('Template Management') }}</span>
                </a>
            </li>
            @endauth



            @permission('view-coupon-permission')
            <!---<li class="{{ active_class(Active::checkUriPattern('admin/faqs*')) }}">
                <a href="{{ route('admin.coupons.index')}}">
                    <i class="fa fa-gift"></i>
                    <span>{{ trans('Coupon Management') }}</span>
                </a>
                </li>--->
            @endauth

            @permission('view-test-permission')
            <li class="{{ active_class(Active::checkUriPattern('admin/log-viewer*')) }} treeview">
                <a href="#">
                    <i class="fa fa-list"></i>
                    <span>{{ trans('Appointments') }}</span>
                </a>
                <ul class="treeview-menu {{ active_class(Active::checkUriPattern('admin/log-viewer*'), 'menu-open') }}" style="display: none; {{ active_class(Active::checkUriPattern('admin/log-viewer*'), 'display: block;') }}">
                    @permission('view-appointments-permission')
                    <li class="{{ active_class(Active::checkUriPattern('admin/faqs*')) }}">
                        <a href="{{ route('admin.appointments.index')}}">
                            <i class="fa fa-calendar"></i>
                            <span>{{ trans('Appointments Management') }}</span>
                        </a>
                    </li>
                    @endauth
                    @permission('view-timeslot-permission')
                    <li class="{{ active_class(Active::checkUriPattern('admin/faqs*')) }}">
                        <a href="{{ route('admin.timeslots.index')}}">
                            <i class="fa fa-times"></i>
                            <span>{{ trans('Time Slot') }}</span>
                        </a>
                    </li>
                    @endauth

                </ul>
            </li>
            @endauth
            @permission('view-meeting-management')
            <li class="{{ active_class(Active::checkUriPattern('admin/faqs*')) }}">
                <a href="{{ route('admin.meetings.index')}}">
                    <i class="fa fa-handshake-o"></i>
                    <span>{{ trans('Meeting  managements') }}</span>
                </a>
            </li>
            @endauth
            @permission('view-questionmanagement-management')
            <li class="{{ active_class(Active::checkUriPattern('admin/faqs*')) }}">
                <a href="{{ route('admin.questionmanagements.index')}}">
                    <i class="fa fa-question-circle"></i>
                    <span>{{ trans('Question managements') }}</span>
                </a>
            </li>

            @endauth
        </ul><!-- /.sidebar-menu -->
    </section><!-- /.sidebar -->
</aside>