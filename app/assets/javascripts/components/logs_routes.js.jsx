var Route = ReactRouter.Route;
this.LogsRoutes = (
  <Route handler={App}>
    <Route name='logs_show' handler={Home} path='/logs/' />
  </Route>
);
