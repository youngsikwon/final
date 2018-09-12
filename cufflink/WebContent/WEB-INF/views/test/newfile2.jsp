<!DOCTYPE html>
<html>
<head>
  <jsp:include page="../common/ui.jsp" />
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
  <title>Theming - Semantic</title>

  <!--- Example CSS -->
  <style>
  body {
    padding: 1em;
  }
  .ui.menu {
    margin: 3em 0em;
  }
  .ui.menu:last-child {
    margin-bottom: 110px;
  }
  </style>

  <!--- Example Javascript -->
  <script>
  $(document).ready(function() {
      $('.ui.menu .ui.dropdown').dropdown({
        on: 'hover'
      });
      $('.ui.menu a.item')
        .on('click', function() {
          $(this)
            .addClass('active')
            .siblings()
            .removeClass('active')
          ;
        })
      ;
    });
  </script>

</head>
<body>

<div class="ui menu">
  <div class="header item">Brand</div>
  <a class="active item">Link</a>
  <a class="item">Link</a>
  <div class="ui dropdown item">
    Dropdown
    <i class="dropdown icon"></i>
    <div class="menu">
      <div class="item">Action</div>
      <div class="item">Another Action</div>
      <div class="item">Something else here</div>
      <div class="divider"></div>
      <div class="item">Separated Link</div>
      <div class="divider"></div>
      <div class="item">One more separated link</div>
    </div>
  </div>
  <div class="right menu">
    <div class="item">
      <div class="ui action left icon input">
        <i class="search icon"></i>
        <input type="text" placeholder="Search">
        <button class="ui button">Submit</button>
      </div>
    </div>
    <a class="item">Link</a>
  </div>
</div>

<div class="ui inverted menu">
  <div class="header item">Brand</div>
  <div class="active item">Link</div>
  <a class="item">Link</a>
  <div class="ui dropdown item">
    Dropdown
    <i class="dropdown icon"></i>
    <div class="menu">
      <div class="item">Action</div>
      <div class="item">Another Action</div>
      <div class="item">Something else here</div>
      <div class="divider"></div>
      <div class="item">Separated Link</div>
      <div class="divider"></div>
      <div class="item">One more separated link</div>
    </div>
  </div>
  <div class="right menu">
    <div class="item">
      <div class="ui transparent inverted icon input">
        <i class="search icon"></i>
        <input type="text" placeholder="Search">
      </div>
    </div>
    <a class="item">Link</a>
  </div>
</div>

<div class="ui secondary menu">
  <div class="active item">Link</div>
  <a class="item">Link1</a>
  <a class="item">Link2</a>
  <a class="item">Link3</a>
  <div class="ui dropdown item">
    Dropdown
    <i class="dropdown icon"></i>
    <div class="menu">
      <div class="item">Action</div>
      <div class="item">Another Action</div>
      <div class="item">Something else here</div>
      <div class="divider"></div>
      <div class="item">Separated Link</div>
      <div class="divider"></div>
      <div class="item">One more separated link</div>
    </div>
  </div>
  <div class="right menu">
    <div class="item">
      <div class="ui action left icon input">
        <i class="search icon"></i>
        <input type="text" placeholder="Search">
        <button class="ui button">Submit</button>
      </div>
    </div>
    <div class="ui dropdown item">
      Dropdown Left<i class="dropdown icon"></i>
      <div class="menu">
        <a class="item">Link</a>
        <a class="item">Link</a>
        <div class="divider"></div>
        <div class="header">Header</div>
        <div class="item">
          <i class="dropdown icon"></i>
          Sub Menu
          <div class="menu">
            <a class="item">Link</a>
            <div class="item">
              <i class="dropdown icon"></i>
              Sub Sub Menu
              <div class="menu">
                <a class="item">Link</a>
                <a class="item">Link</a>
              </div>
            </div>
            <a class="item">Link</a>
          </div>
        </div>
        <a class="item">Link</a>
      </div>
    </div>
    <a class="item">Link</a>
  </div>
</div>

<div class="ui three column doubling grid">
  <div class="column">
    <div class="ui secondary pointing menu">
      <div class="active item">Link</div>
      <a class="item">Link</a>
      <a class="item">Link</a>
    </div>
  </div>

  <div class="column">
    <div class="ui tabular menu">
      <div class="active item">Link</div>
      <a class="item">Link</a>
      <a class="item">Link</a>
    </div>
  </div>

  <div class="column">
    <div class="ui pointing menu">
      <div class="active item">Link</div>
      <a class="item">Link</a>
      <div class="right item">
        Right Text
      </div>
    </div>
  </div>
</div>

</body>
</html>
