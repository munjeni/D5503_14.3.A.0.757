.class public Lcom/android/phone/SomcTabletRightPanel;
.super Ljava/lang/Object;
.source "SomcTabletRightPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mCallView:Lcom/android/phone/CallView;

.field private mContext:Landroid/content/Context;

.field mPluginView:Landroid/view/View;

.field private mRightPanelCover:Landroid/widget/ImageView;

.field private mRightPanelCoverAlphaValue:I

.field private mRightPanelHeader:Landroid/widget/LinearLayout;

.field private mTabletRightPanelView:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/android/phone/CallView;Landroid/content/Context;)V
    .locals 3
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "callView"    # Lcom/android/phone/CallView;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/SomcTabletRightPanel;->mCallView:Lcom/android/phone/CallView;

    .line 33
    iput-object p2, p0, Lcom/android/phone/SomcTabletRightPanel;->mCallView:Lcom/android/phone/CallView;

    .line 34
    iput-object p3, p0, Lcom/android/phone/SomcTabletRightPanel;->mContext:Landroid/content/Context;

    .line 35
    const v1, 0x7f0700b7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/phone/SomcTabletRightPanel;->mTabletRightPanelView:Landroid/widget/RelativeLayout;

    .line 36
    iget-object v1, p0, Lcom/android/phone/SomcTabletRightPanel;->mTabletRightPanelView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    const v1, 0x7f0700b8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 40
    .local v0, "pluginViewContainer":Landroid/view/ViewGroup;
    invoke-static {}, Lcom/android/phone/SomcPluginViewManager;->getInstance()Lcom/android/phone/SomcPluginViewManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/SomcTabletRightPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/phone/SomcPluginViewManager;->getPluginView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/SomcTabletRightPanel;->mPluginView:Landroid/view/View;

    .line 41
    iget-object v1, p0, Lcom/android/phone/SomcTabletRightPanel;->mPluginView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/android/phone/SomcTabletRightPanel;->mPluginView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/SomcTabletRightPanel;->initRightPanelView()V

    .line 46
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 71
    iget-object v0, p0, Lcom/android/phone/SomcTabletRightPanel;->mRightPanelCover:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/android/phone/SomcTabletRightPanel;->mRightPanelHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 73
    return-void
.end method

.method initRightPanelView()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/phone/SomcTabletRightPanel;->mTabletRightPanelView:Landroid/widget/RelativeLayout;

    const v1, 0x7f0700ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/SomcTabletRightPanel;->mRightPanelCover:Landroid/widget/ImageView;

    .line 50
    iget-object v0, p0, Lcom/android/phone/SomcTabletRightPanel;->mRightPanelCover:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v0, p0, Lcom/android/phone/SomcTabletRightPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/SomcTabletRightPanel;->mRightPanelCoverAlphaValue:I

    .line 53
    iget-object v0, p0, Lcom/android/phone/SomcTabletRightPanel;->mTabletRightPanelView:Landroid/widget/RelativeLayout;

    const v1, 0x7f0700b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/SomcTabletRightPanel;->mRightPanelHeader:Landroid/widget/LinearLayout;

    .line 54
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 83
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 94
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 86
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/SomcTabletRightPanel;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->isDtmfDialPadOpen()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/SomcTabletRightPanel;->mCallView:Lcom/android/phone/CallView;

    const v1, 0x7f0700bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/android/phone/SomcTabletRightPanel;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->closeDtmfDialPad()V

    .line 90
    iget-object v0, p0, Lcom/android/phone/SomcTabletRightPanel;->mCallView:Lcom/android/phone/CallView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/phone/CallView;->setSoundRoutingOptionsVisibility(I)V

    goto :goto_0

    .line 83
    :pswitch_data_0
    .packed-switch 0x7f0700b7
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setPluginViewFocusable(Z)V
    .locals 1
    .param p1, "isFocusable"    # Z

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/phone/SomcTabletRightPanel;->mPluginView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/phone/SomcTabletRightPanel;->mPluginView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 79
    :cond_0
    return-void
.end method

.method public showTabletRightPanelCoverVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    const/4 v0, 0x0

    .line 57
    if-eqz p1, :cond_1

    .line 58
    iget-object v1, p0, Lcom/android/phone/SomcTabletRightPanel;->mRightPanelCover:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 59
    iget-object v1, p0, Lcom/android/phone/SomcTabletRightPanel;->mRightPanelCover:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/SomcTabletRightPanel;->mRightPanelCoverAlphaValue:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 63
    :goto_0
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/phone/SomcTabletRightPanel;->setPluginViewFocusable(Z)V

    .line 64
    return-void

    .line 61
    :cond_1
    iget-object v1, p0, Lcom/android/phone/SomcTabletRightPanel;->mRightPanelCover:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showTabletRightPanelHeaderVisibility(I)V
    .locals 1
    .param p1, "visible"    # I

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/phone/SomcTabletRightPanel;->mRightPanelHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 68
    return-void
.end method
