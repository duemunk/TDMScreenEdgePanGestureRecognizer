TDMScreenEdgePanGestureRecognizer
=================================

Small extension to UIScreenEdgePanGestureRecognizer to make it play nice with UIScrollViews.

Use:

    TDMScreenEdgePanGestureRecognizer *screenEdgePan = [[TDMScreenEdgePanGestureRecognizer alloc] initWithTarget:self action:@selector(edgePanned:)];
    screenEdgePan.edges = UIRectEdgeLeft;
    [self.view addGestureRecognizer:_edgePanGestureRecognizer];
    // Call after setup (= added to view)
    [_edgePanGestureRecognizer requireToFailSubScrollViewsPanGestures];
