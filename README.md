TDMScreenEdgePanGestureRecognizer
=================================

Small extension to UIScreenEdgePanGestureRecognizer to make it play nice with UIScrollViews.

## How to use

    TDMScreenEdgePanGestureRecognizer *screenEdgePan = [[TDMScreenEdgePanGestureRecognizer alloc] initWithTarget:self action:@selector(edgePanned:)];
    screenEdgePan.edges = UIRectEdgeLeft;
    [self.view addGestureRecognizer:_edgePanGestureRecognizer];
    // Call after setup (= added to view)
    [_edgePanGestureRecognizer requireToFailSubScrollViewsPanGestures];


## Reason to use

If you have a `UIScrollView` and a `UIScreenEdgePanGestureRecognizer`, it is likely that the edgepan and the scrollview-pan conflicts. This happens when the 1) scrollview extend all (~<15px) the way to the edges *and* 2) the scrollview can bounce in the direction orthogonal to edgepans detection-edge.
### Explained in code

    - (void)viewDidLoad
    {
      [super viewDidload];
      
      UIScrollView *scrollView = [UIScrollView new];
      self.view addSubview:scrollView];
      scrollView.frame = self.view.bounds;
      
      UIScreenEdgePanGestureRecognizer *edgePan = [[UIScreenEdgePanGestureRecognizer alloc] initWithTarget:...];
      self.view addGestureRecognizer:edgePan];
      
      // This
      edgePan.edges = UIRectLeft;
      scrollView.alwaysBounceHorizontally = YES;
    }
