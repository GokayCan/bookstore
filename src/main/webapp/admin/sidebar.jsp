<%-- 
    Document   : sidebar
    Created on : 2 Ara 2022, 10:19:25
    Author     : Bahadır
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="index.jsp" class="brand-link">
      <img src="dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
           style="opacity: .8">
      <span class="brand-text font-weight-light">BookStore</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="index.jsp" class="d-block">SGB</a>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item has-treeview">
            <a href="index.jsp" class="nav-link">
              <i class="nav-icon fas fa-home"></i>
              <p>
                Ana Sayfa
              </p>
            </a>
          </li>
          <li class="nav-item has-treeview menu-open">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-book"></i>
              <p>
                Kitaplar
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="books.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Kitap Listesi</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="book-list.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Kitaplar</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item has-treeview menu-open">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-users"></i>
              <p>
                Üyeler
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="users.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Üye Listesi</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="user-list.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Üyeler</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item has-treeview menu-open">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-briefcase"></i>
              <p>
                Çalışanlar
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="employees.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Çalışanlar Listesi</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="employee-list.jsp" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Çalışanlar</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item has-treeview">
            <a href="loans.jsp" class="nav-link">
              <i class="nav-icon fas fa-arrow-left"></i>
              <p>
                Emanetler
              </p>
            </a>
          </li>
          <li class="nav-item has-treeview">
            <a href="authors.jsp" class="nav-link">
              <i class="nav-icon fas fa-edit"></i>
              <p>
                Yazarlar
              </p>
            </a>
          </li>
          <li class="nav-item has-treeview">
            <a href="publishers.jsp" class="nav-link">
              <i class="nav-icon fas fa-building"></i>
              <p>
                Yayınevleri
              </p>
            </a>
          </li>
          <li class="nav-item has-treeview">
            <a href="translators.jsp" class="nav-link">
              <i class="nav-icon fas fa-pen-alt"></i>
              <p>
                Çevirmenler
              </p>
            </a>
          </li>
          <li class="nav-item has-treeview">
            <a href="cities.jsp" class="nav-link">
              <i class="nav-icon fas fa-map"></i>
              <p>
                Şehirler
              </p>
            </a>
          </li>
          <li class="nav-item has-treeview">
            <a href="categories.jsp" class="nav-link">
              <i class="nav-icon fas fa-th-list"></i>
              <p>
                Kitap Kategorileri
              </p>
            </a>
          </li>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>
