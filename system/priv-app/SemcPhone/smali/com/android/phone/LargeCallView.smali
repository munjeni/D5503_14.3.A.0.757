.class public Lcom/android/phone/LargeCallView;
.super Lcom/android/phone/CallView;
.source "LargeCallView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/LargeCallView$11;,
        Lcom/android/phone/LargeCallView$MenuListener;,
        Lcom/android/phone/LargeCallView$WaitingCallPanel;
    }
.end annotation


# static fields
.field private static final SRC_TAGS:[Ljava/lang/String;

.field private static final WAITING_PANEL_VIEW_ANCTIONS:[[I


# instance fields
.field private mActiveOnHoldheldCall:Landroid/widget/RelativeLayout;

.field private mAdditionalCallInfoOfHeldTextView:Landroid/widget/TextView;

.field private mAmAnimationView:Lcom/android/phone/am/SomcAmAnimationView;

.field private mAmCircleIcon:Landroid/widget/ImageView;

.field private mAmIndicator:Landroid/widget/TextView;

.field private mAmPlayingCounter:Landroid/widget/TextView;

.field private mAmRecordingCounter:Landroid/widget/TextView;

.field private mBgCallContactNumberIcon:Landroid/widget/ImageView;

.field private mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

.field private mCallEndedInteractionPanel:Landroid/view/ViewGroup;

.field private mCallRecordingPanel:Landroid/widget/LinearLayout;

.field private mCallRecordingTimeTextView:Landroid/widget/TextView;

.field private mCallState:Landroid/widget/TextView;

.field private mCallStateInfoLayout:Landroid/view/ViewGroup;

.field private mCallStateSpinner:Landroid/view/View;

.field private mCallTime:Landroid/widget/TextView;

.field private mCallWidgetMenuButton:Landroid/widget/ImageView;

.field private mCanSeparate:Z

.field private mCityIdTextView:Landroid/widget/TextView;

.field private mConferenceCallButton:Landroid/widget/Button;

.field private mConferenceList:Landroid/widget/ListView;

.field private mConferenceListAdapter:Lcom/android/phone/CallView$ConferenceListAdapter;

.field private mContext:Landroid/content/Context;

.field private mDialerLargeHeaderIcon:Landroid/widget/ImageView;

.field private mDrawerHandleHeight:I

.field private mDrawerItemHeight:I

.field private mDrawerNextState:I

.field private mDrawerTopOffset:I

.field private mDtmfDialPad:Lcom/android/phone/SomcDtmfDialPad;

.field private mEndCallButton:Landroid/view/View;

.field private mFragmentManager:Landroid/app/FragmentManager;

.field private mHDIcon:Landroid/widget/ImageView;

.field private mHeldCallPanel:Landroid/widget/RelativeLayout;

.field private mIncomingCallPanel:Landroid/widget/LinearLayout;

.field private mIncomingCallView:Lcom/android/phone/SomcIncomingCallView;

.field private mInformationBox:Landroid/widget/TextView;

.field private mIsDrawerContentLoaded:Z

.field private mIsTablet:Z

.field private final mLargeHeaderAnimationListener:Landroid/animation/LayoutTransition$TransitionListener;

.field private mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

.field private mManageConferencePanel:Landroid/view/ViewGroup;

.field private mMenuHeight:I

.field private mMergeCallsButton:Landroid/widget/LinearLayout;

.field private mMsgListView:Landroid/widget/ListView;

.field private mNameOrNumberBGCall:Landroid/widget/TextView;

.field private mNameOrNumberFGCall:Lcom/android/phone/SomcContactTextView;

.field private mNavigationBarHeight:I

.field private mOptionMenuButton:Landroid/widget/ImageView;

.field private mOptionsAdapter:Lcom/android/phone/RejectMsgAdapter;

.field private mOptionsItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mPhoneNumberTextView:Landroid/widget/TextView;

.field private mPhotoAlphaValueActiveCall:I

.field private mPhotoAlphaValueAnsweringMachine:I

.field private mPhotoAlphaValueHeldCall:I

.field private mPopupView:[Landroid/view/View;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRedirectingCallMessage:Landroid/widget/TextView;

.field private mRedirectingNameOrNumber:Landroid/widget/TextView;

.field private mRedirectingPanel:Landroid/widget/LinearLayout;

.field private mRedirectingSeparaterOfNameAndNum:Landroid/widget/TextView;

.field private mRedirectingdNumberTextView:Landroid/widget/TextView;

.field private mRejectMsgAdapter:Lcom/android/phone/RejectMsgAdapter;

.field private mRejectMsgDrawer:Lcom/android/phone/SomcSlidingDrawer;

.field private mRejectMsgItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mSeparatorOfNumberAndCityID:Landroid/widget/TextView;

.field private mSipIcon:Landroid/widget/ImageView;

.field private mSipUriTextView:Landroid/widget/TextView;

.field private mSolidShadowPanel:Landroid/widget/RelativeLayout;

.field private mSomcTabletRightPanel:Lcom/android/phone/SomcTabletRightPanel;

.field private mSpeakerIcon:Landroid/widget/ImageView;

.field private mView:Landroid/view/View;

.field private final mWaitingCallPanel:Lcom/android/phone/LargeCallView$WaitingCallPanel;

.field private mWidgetLayerHeight:I

.field private mWidgetMenu:Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

.field private mhideIncomingCallPanelAnim:Landroid/view/animation/Animation;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 94
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "{0}"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/phone/LargeCallView;->SRC_TAGS:[Ljava/lang/String;

    .line 244
    const/4 v0, 0x4

    new-array v0, v0, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    new-array v1, v2, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/LargeCallView;->WAITING_PANEL_VIEW_ANCTIONS:[[I

    return-void

    :array_0
    .array-data 4
        0x7f0700d6
        0x12
    .end array-data

    :array_1
    .array-data 4
        0x7f0700d8
        0x9
    .end array-data

    :array_2
    .array-data 4
        0x7f0700d4
        0x4
    .end array-data

    :array_3
    .array-data 4
        0x7f0700da
        0x9
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/FragmentManager;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragmentManager"    # Landroid/app/FragmentManager;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 296
    invoke-direct {p0, p1}, Lcom/android/phone/CallView;-><init>(Landroid/content/Context;)V

    .line 98
    iput-boolean v1, p0, Lcom/android/phone/LargeCallView;->mIsTablet:Z

    .line 119
    iput-object v4, p0, Lcom/android/phone/LargeCallView;->mHDIcon:Landroid/widget/ImageView;

    .line 184
    new-instance v0, Lcom/android/phone/LargeCallView$WaitingCallPanel;

    invoke-direct {v0, p0, v4}, Lcom/android/phone/LargeCallView$WaitingCallPanel;-><init>(Lcom/android/phone/LargeCallView;Lcom/android/phone/LargeCallView$1;)V

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mWaitingCallPanel:Lcom/android/phone/LargeCallView$WaitingCallPanel;

    .line 228
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/LargeCallView;->mDrawerNextState:I

    .line 238
    iput-boolean v1, p0, Lcom/android/phone/LargeCallView;->mIsDrawerContentLoaded:Z

    .line 252
    new-instance v0, Lcom/android/phone/LargeCallView$1;

    invoke-direct {v0, p0}, Lcom/android/phone/LargeCallView$1;-><init>(Lcom/android/phone/LargeCallView;)V

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mLargeHeaderAnimationListener:Landroid/animation/LayoutTransition$TransitionListener;

    .line 266
    new-instance v0, Lcom/android/phone/LargeCallView$2;

    invoke-direct {v0, p0}, Lcom/android/phone/LargeCallView$2;-><init>(Lcom/android/phone/LargeCallView;)V

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mOptionsItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 281
    new-instance v0, Lcom/android/phone/LargeCallView$3;

    invoke-direct {v0, p0}, Lcom/android/phone/LargeCallView$3;-><init>(Lcom/android/phone/LargeCallView;)V

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mRejectMsgItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 297
    iput-object p2, p0, Lcom/android/phone/LargeCallView;->mFragmentManager:Landroid/app/FragmentManager;

    .line 298
    iput-object p1, p0, Lcom/android/phone/LargeCallView;->mContext:Landroid/content/Context;

    .line 299
    invoke-static {}, Lcom/android/phone/SomcPhoneUtils;->isTablet()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/LargeCallView;->mIsTablet:Z

    .line 300
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->initComponents()V

    .line 302
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallTime:Landroid/widget/TextView;

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmManager;->isAmWorking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAmPlayingCounter:Landroid/widget/TextView;

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAmRecordingCounter:Landroid/widget/TextView;

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/LargeCallView;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/LargeCallView;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/phone/LargeCallView;->requestLargeHeaderAnimation(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/LargeCallView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/LargeCallView;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/phone/LargeCallView;)Lcom/android/phone/SomcIncomingCallView;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/LargeCallView;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mIncomingCallView:Lcom/android/phone/SomcIncomingCallView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/LargeCallView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/LargeCallView;

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/phone/LargeCallView;->mIsTablet:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/phone/LargeCallView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/LargeCallView;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mIncomingCallPanel:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/phone/LargeCallView;Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/LargeCallView;
    .param p1, "x1"    # Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;
    .param p2, "x2"    # Z

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/phone/LargeCallView;->configureWidgetMode(Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/phone/LargeCallView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/LargeCallView;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/phone/LargeCallView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/LargeCallView;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallWidgetMenuButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/phone/LargeCallView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/LargeCallView;

    .prologue
    .line 90
    iget v0, p0, Lcom/android/phone/LargeCallView;->mWidgetLayerHeight:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/phone/LargeCallView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/LargeCallView;

    .prologue
    .line 90
    iget v0, p0, Lcom/android/phone/LargeCallView;->mMenuHeight:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/LargeCallView;)Lcom/android/phone/RejectMsgAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/LargeCallView;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mOptionsAdapter:Lcom/android/phone/RejectMsgAdapter;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/phone/LargeCallView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/LargeCallView;
    .param p1, "x1"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/android/phone/LargeCallView;->mDrawerNextState:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/phone/LargeCallView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/LargeCallView;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->triggerDrawerStateChanged()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/LargeCallView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/LargeCallView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/phone/LargeCallView;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/LargeCallView;)Lcom/android/phone/RejectMsgAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/LargeCallView;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mRejectMsgAdapter:Lcom/android/phone/RejectMsgAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/LargeCallView;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/LargeCallView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/phone/LargeCallView;->animateHideIncomingCallView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$900()[[I
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/android/phone/LargeCallView;->WAITING_PANEL_VIEW_ANCTIONS:[[I

    return-object v0
.end method

.method private animateHideIncomingCallView(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 2106
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2127
    :goto_0
    return-void

    .line 2107
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mhideIncomingCallPanelAnim:Landroid/view/animation/Animation;

    .line 2110
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mhideIncomingCallPanelAnim:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    .line 2111
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mhideIncomingCallPanelAnim:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/phone/LargeCallView$10;

    invoke-direct {v1, p0, p1}, Lcom/android/phone/LargeCallView$10;-><init>(Lcom/android/phone/LargeCallView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2122
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mhideIncomingCallPanelAnim:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 2124
    :cond_1
    const-string v0, "LargeCallView"

    const-string v1, "animateHideIncomingCallView: mhideIncomingCallPanelAnim is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private calculateRejectMsgDrawerTopOffset()I
    .locals 4

    .prologue
    .line 692
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mMsgListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getCount()I

    move-result v2

    iget v3, p0, Lcom/android/phone/LargeCallView;->mDrawerItemHeight:I

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/phone/LargeCallView;->mDrawerHandleHeight:I

    sub-int/2addr v1, v2

    add-int/lit8 v0, v1, -0x1

    .line 694
    .local v0, "calculatedOffset":I
    iget v1, p0, Lcom/android/phone/LargeCallView;->mNavigationBarHeight:I

    sub-int/2addr v0, v1

    .line 695
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->isDrawerContentLoaded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 696
    iget v1, p0, Lcom/android/phone/LargeCallView;->mDrawerItemHeight:I

    sub-int/2addr v0, v1

    .line 698
    :cond_0
    iget v1, p0, Lcom/android/phone/LargeCallView;->mDrawerTopOffset:I

    if-le v0, v1, :cond_1

    .line 701
    .end local v0    # "calculatedOffset":I
    :goto_0
    return v0

    .restart local v0    # "calculatedOffset":I
    :cond_1
    iget v0, p0, Lcom/android/phone/LargeCallView;->mDrawerTopOffset:I

    goto :goto_0
.end method

.method private cleanUpWidgets()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2616
    sget-object v2, Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;->WIDGET_TYPE_DIALOG:Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;

    invoke-virtual {v2}, Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;->getId()I

    move-result v2

    invoke-virtual {p0, v3, v2}, Lcom/android/phone/LargeCallView;->showWidget(Landroid/widget/RemoteViews;I)V

    .line 2617
    sget-object v2, Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;->WIDGET_TYPE_MAIN:Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;

    invoke-virtual {v2}, Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;->getId()I

    move-result v2

    invoke-virtual {p0, v3, v2}, Lcom/android/phone/LargeCallView;->showWidget(Landroid/widget/RemoteViews;I)V

    .line 2618
    sget-object v2, Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;->WIDGET_TYPE_BACKGROUND:Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;

    invoke-virtual {v2}, Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;->getId()I

    move-result v2

    invoke-virtual {p0, v3, v2}, Lcom/android/phone/LargeCallView;->showWidget(Landroid/widget/RemoteViews;I)V

    .line 2619
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mWidgetMenu:Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

    if-eqz v2, :cond_1

    .line 2620
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mWidgetMenu:Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

    invoke-virtual {v2}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->collapse()V

    .line 2621
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mWidgetMenu:Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

    invoke-virtual {v2}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->getWidgets()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2622
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mWidgetMenu:Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

    invoke-virtual {v2}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->getWidgets()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/phone/widget/ISomcCallWidget;

    .line 2623
    .local v1, "widget":Lcom/android/phone/widget/ISomcCallWidget;
    iget-object v2, p0, Lcom/android/phone/CallView;->listener:Lcom/android/phone/CallView$CallViewActionListener;

    if-eqz v2, :cond_0

    .line 2624
    iget-object v2, p0, Lcom/android/phone/CallView;->listener:Lcom/android/phone/CallView$CallViewActionListener;

    const/16 v3, 0x21

    invoke-interface {v2, v3, v1}, Lcom/android/phone/CallView$CallViewActionListener;->onActionPerformed(ILjava/lang/Object;)V

    goto :goto_0

    .line 2630
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "widget":Lcom/android/phone/widget/ISomcCallWidget;
    :cond_1
    return-void
.end method

.method private configureWidgetMode(Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;Z)V
    .locals 1

    .prologue
    .line 2592
    const v0, 0x7f0700ae

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2593
    if-nez v0, :cond_1

    .line 2605
    :cond_0
    :goto_0
    return-void

    .line 2596
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/LargeCallView;->updateWidgetMenuMode(Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;)V

    .line 2597
    sget-object v0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;->INCOMING:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;

    if-ne p1, v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->updateWidgetAreaHeight(Z)V

    .line 2598
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mWidgetMenu:Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

    if-eqz v0, :cond_0

    .line 2599
    if-eqz p2, :cond_3

    .line 2600
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mWidgetMenu:Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

    invoke-virtual {v0}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->collapse()V

    goto :goto_0

    .line 2597
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 2601
    :cond_3
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mWidgetMenu:Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

    invoke-virtual {v0}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->isInAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2602
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mWidgetMenu:Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

    invoke-virtual {v0}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->expand()V

    goto :goto_0
.end method

.method private createWidgetMenu()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f0700ae

    .line 2456
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2457
    if-nez v0, :cond_0

    .line 2475
    :goto_0
    return-void

    .line 2460
    :cond_0
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_1

    const-string v0, "createWidgetMenu"

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->log(Ljava/lang/String;)V

    .line 2461
    :cond_1
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v1, "WidgetMenu"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 2462
    if-nez v0, :cond_2

    .line 2463
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 2464
    new-instance v1, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

    invoke-direct {v1}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;-><init>()V

    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mWidgetMenu:Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

    .line 2465
    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mWidgetMenu:Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

    new-instance v2, Lcom/android/phone/LargeCallView$MenuListener;

    invoke-direct {v2, p0, v4}, Lcom/android/phone/LargeCallView$MenuListener;-><init>(Lcom/android/phone/LargeCallView;Lcom/android/phone/LargeCallView$1;)V

    invoke-virtual {v1, v2}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->registerListener(Lcom/android/phone/widget/SomcCallWidgetMenuFragment$CallWidgetMenuListener;)V

    .line 2466
    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mWidgetMenu:Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

    const-string v2, "WidgetMenu"

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 2467
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 2468
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    goto :goto_0

    .line 2471
    :cond_2
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_3

    const-string v1, "Fragment already exists. No need to create menu"

    invoke-direct {p0, v1}, Lcom/android/phone/LargeCallView;->log(Ljava/lang/String;)V

    .line 2472
    :cond_3
    check-cast v0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mWidgetMenu:Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

    .line 2473
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mWidgetMenu:Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

    new-instance v1, Lcom/android/phone/LargeCallView$MenuListener;

    invoke-direct {v1, p0, v4}, Lcom/android/phone/LargeCallView$MenuListener;-><init>(Lcom/android/phone/LargeCallView;Lcom/android/phone/LargeCallView$1;)V

    invoke-virtual {v0, v1}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->registerListener(Lcom/android/phone/widget/SomcCallWidgetMenuFragment$CallWidgetMenuListener;)V

    goto :goto_0
.end method

.method private disableMergeCallsButton()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1303
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMergeCallsButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1304
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f070095

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1305
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f070096

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1306
    return-void
.end method

.method private dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 2096
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v0

    .line 2097
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 2098
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2100
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 2101
    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2103
    :cond_0
    return-void
.end method

.method private enableMergeCallsButton()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1312
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMergeCallsButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1313
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f070095

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1314
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f070096

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1315
    return-void
.end method

.method private findWidgetContainerByType(I)Landroid/view/ViewGroup;
    .locals 3

    .prologue
    .line 2524
    const/4 v1, 0x0

    .line 2525
    invoke-static {p1}, Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;->valueOf(I)Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;

    move-result-object v0

    .line 2528
    if-nez v0, :cond_0

    .line 2529
    sget-object v0, Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;->WIDGET_TYPE_MAIN:Lcom/android/phone/widget/SomcCallWidgetManager$WidgetType;

    .line 2532
    :cond_0
    sget-object v2, Lcom/android/phone/LargeCallView$11;->$SwitchMap$com$android$phone$widget$SomcCallWidgetManager$WidgetType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    .line 2543
    :goto_0
    return-object v0

    .line 2534
    :pswitch_0
    const v0, 0x7f07008d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    .line 2537
    :pswitch_1
    const v0, 0x7f0700af

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    .line 2540
    :pswitch_2
    const v0, 0x7f0700b0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    .line 2532
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getLargeHeaderHeight()I
    .locals 2

    .prologue
    .line 997
    const v1, 0x7f07008c

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 998
    .local v0, "largeHeader":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 999
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1001
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hideCallEndedInteraction()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2764
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallEndedInteractionPanel:Landroid/view/ViewGroup;

    const v1, 0x7f070011

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2765
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallEndedInteractionPanel:Landroid/view/ViewGroup;

    const v1, 0x7f070010

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2766
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallEndedInteractionPanel:Landroid/view/ViewGroup;

    const v1, 0x7f070012

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2767
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallEndedInteractionPanel:Landroid/view/ViewGroup;

    const v1, 0x7f070013

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2768
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallEndedInteractionPanel:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2769
    return-void
.end method

.method private hideCallingProgress()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1268
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcInCallButtonPanel;->setInOutgoingCallState(Z)V

    .line 1270
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDtmfDialPad:Lcom/android/phone/SomcDtmfDialPad;

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcDtmfDialPad;->setDialDisabled(Z)V

    .line 1271
    return-void
.end method

.method private hideManageConferencePanel()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1802
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mManageConferencePanel:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 1803
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mConferenceList:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 1804
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mConferenceList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1805
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mConferenceList:Landroid/widget/ListView;

    .line 1808
    :cond_0
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mConferenceListAdapter:Lcom/android/phone/CallView$ConferenceListAdapter;

    .line 1809
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mManageConferencePanel:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1810
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->updateCallRecordingTimeVisibility()V

    .line 1812
    :cond_1
    return-void
.end method

.method private hideNormalCallLayout()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    .line 1417
    const v0, 0x7f07008b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1418
    const v0, 0x7f0700bc

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1419
    const v0, 0x7f0700a5

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1420
    const v0, 0x7f0700b1

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/phone/LargeCallView;->mIsTablet:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1422
    const v0, 0x7f070090

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1423
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1424
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1425
    return-void

    .line 1420
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private initCallEndedInteractionPanel()V
    .locals 2

    .prologue
    .line 2715
    const v0, 0x7f07000e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mCallEndedInteractionPanel:Landroid/view/ViewGroup;

    .line 2716
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallEndedInteractionPanel:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2718
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallEndedInteractionPanel:Landroid/view/ViewGroup;

    const v1, 0x7f070011

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2719
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallEndedInteractionPanel:Landroid/view/ViewGroup;

    const v1, 0x7f070010

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2720
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallEndedInteractionPanel:Landroid/view/ViewGroup;

    const v1, 0x7f070012

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2722
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallEndedInteractionPanel:Landroid/view/ViewGroup;

    const v1, 0x7f070013

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2724
    return-void
.end method

.method private initComponents()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v2, -0x1

    const/4 v9, 0x0

    .line 358
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030020

    invoke-virtual {v0, v1, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    .line 360
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 363
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 364
    .local v8, "res":Landroid/content/res/Resources;
    const v0, 0x7f09000e

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/LargeCallView;->mPhotoAlphaValueActiveCall:I

    .line 365
    const v0, 0x7f09000f

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/LargeCallView;->mPhotoAlphaValueHeldCall:I

    .line 366
    const v0, 0x7f090010

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/LargeCallView;->mPhotoAlphaValueAnsweringMachine:I

    .line 368
    const v0, 0x7f0a0092

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const v1, 0x7f0a0091

    invoke-virtual {v8, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/LargeCallView;->mDrawerItemHeight:I

    .line 371
    const v0, 0x7f0a0084

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/LargeCallView;->mDrawerHandleHeight:I

    .line 373
    const v0, 0x105000d

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/LargeCallView;->mNavigationBarHeight:I

    .line 376
    new-instance v0, Lcom/android/phone/SomcInCallButtonPanel;

    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/phone/LargeCallView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/phone/CallView;->isHWQwertyVisible()Z

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_3

    const/4 v5, 0x1

    :goto_0
    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/SomcInCallButtonPanel;-><init>(Landroid/view/View;Lcom/android/phone/CallView;Landroid/content/Context;ZZ)V

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    .line 378
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f0700a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mCallStateInfoLayout:Landroid/view/ViewGroup;

    .line 379
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f0700a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mCallState:Landroid/widget/TextView;

    .line 380
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f0700a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mCallStateSpinner:Landroid/view/View;

    .line 381
    iget-boolean v0, p0, Lcom/android/phone/LargeCallView;->mIsTablet:Z

    if-eqz v0, :cond_0

    .line 382
    new-instance v0, Lcom/android/phone/SomcTabletRightPanel;

    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0, v2}, Lcom/android/phone/SomcTabletRightPanel;-><init>(Landroid/view/View;Lcom/android/phone/CallView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mSomcTabletRightPanel:Lcom/android/phone/SomcTabletRightPanel;

    .line 383
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f0700b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mIncomingCallPanel:Landroid/widget/LinearLayout;

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f070089

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/SomcContactPicView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    .line 391
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mWaitingCallPanel:Lcom/android/phone/LargeCallView$WaitingCallPanel;

    const v1, 0x7f0700b1

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/LargeCallView$WaitingCallPanel;->init(Landroid/view/View;)V

    .line 394
    const v0, 0x7f070093

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mHeldCallPanel:Landroid/widget/RelativeLayout;

    .line 396
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f0700dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/SomcIncomingCallView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mIncomingCallView:Lcom/android/phone/SomcIncomingCallView;

    .line 397
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f0700a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mSolidShadowPanel:Landroid/widget/RelativeLayout;

    .line 399
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->initMsgListComponents()V

    .line 401
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f0700bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/SomcContactTextView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mNameOrNumberFGCall:Lcom/android/phone/SomcContactTextView;

    .line 402
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f07009e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mRedirectingCallMessage:Landroid/widget/TextView;

    .line 403
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f07009f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mRedirectingNameOrNumber:Landroid/widget/TextView;

    .line 404
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f0700a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mRedirectingdNumberTextView:Landroid/widget/TextView;

    .line 405
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f0700a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mRedirectingSeparaterOfNameAndNum:Landroid/widget/TextView;

    .line 407
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f07009d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mRedirectingPanel:Landroid/widget/LinearLayout;

    .line 409
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f07002d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mPhoneNumberTextView:Landroid/widget/TextView;

    .line 410
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f0700c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mCityIdTextView:Landroid/widget/TextView;

    .line 411
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f0700c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mSeparatorOfNumberAndCityID:Landroid/widget/TextView;

    .line 413
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSeparatorOfNumberAndCityID:Landroid/widget/TextView;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f0700c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mSipUriTextView:Landroid/widget/TextView;

    .line 416
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f0700c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mSipIcon:Landroid/widget/ImageView;

    .line 417
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f070099

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mNameOrNumberBGCall:Landroid/widget/TextView;

    .line 418
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f07009c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mAdditionalCallInfoOfHeldTextView:Landroid/widget/TextView;

    .line 420
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f070094

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mMergeCallsButton:Landroid/widget/LinearLayout;

    .line 421
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f070097

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mActiveOnHoldheldCall:Landroid/widget/RelativeLayout;

    .line 422
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mActiveOnHoldheldCall:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 423
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f0700cd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 424
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f0700c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mCallTime:Landroid/widget/TextView;

    .line 425
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f0700a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mConferenceCallButton:Landroid/widget/Button;

    .line 426
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f0700bd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mInformationBox:Landroid/widget/TextView;

    .line 428
    const v0, 0x7f0700a9

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mEndCallButton:Landroid/view/View;

    .line 429
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mEndCallButton:Landroid/view/View;

    new-instance v1, Lcom/android/phone/LargeCallView$5;

    invoke-direct {v1, p0}, Lcom/android/phone/LargeCallView$5;-><init>(Lcom/android/phone/LargeCallView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f07008f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mCallWidgetMenuButton:Landroid/widget/ImageView;

    .line 436
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallWidgetMenuButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 437
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallWidgetMenuButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 439
    :cond_1
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f07009a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mBgCallContactNumberIcon:Landroid/widget/ImageView;

    .line 440
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f07008e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mOptionMenuButton:Landroid/widget/ImageView;

    .line 443
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f0700c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mHDIcon:Landroid/widget/ImageView;

    .line 446
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mConferenceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 447
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMergeCallsButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 448
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mIncomingCallView:Lcom/android/phone/SomcIncomingCallView;

    new-instance v1, Lcom/android/phone/LargeCallView$6;

    invoke-direct {v1, p0}, Lcom/android/phone/LargeCallView$6;-><init>(Lcom/android/phone/LargeCallView;)V

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcIncomingCallView;->setOnIncomingCallRspListener(Lcom/android/phone/SomcIncomingCallView$OnIncomingCallResponseListener;)V

    .line 486
    iput-object v10, p0, Lcom/android/phone/LargeCallView;->mManageConferencePanel:Landroid/view/ViewGroup;

    .line 488
    sget-object v0, Lcom/android/phone/CallView$CallViewMode;->NORMAL_MODE:Lcom/android/phone/CallView$CallViewMode;

    iput-object v0, p0, Lcom/android/phone/CallView;->mCallViewMode:Lcom/android/phone/CallView$CallViewMode;

    .line 490
    const v0, 0x7f070090

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mCallRecordingPanel:Landroid/widget/LinearLayout;

    .line 491
    const v0, 0x7f070092

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mCallRecordingTimeTextView:Landroid/widget/TextView;

    .line 493
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f0700c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mDialerLargeHeaderIcon:Landroid/widget/ImageView;

    .line 495
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v6

    .line 496
    .local v6, "am":Lcom/android/phone/am/SomcAmManager;
    const v0, 0x7f070081

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/am/SomcAmAnimationView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mAmAnimationView:Lcom/android/phone/am/SomcAmAnimationView;

    .line 497
    invoke-virtual {v6}, Lcom/android/phone/am/SomcAmManager;->isAmPlaying()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v6}, Lcom/android/phone/am/SomcAmManager;->getPlayedDuration()F

    move-result v0

    cmpl-float v0, v0, v9

    if-eqz v0, :cond_4

    .line 498
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAmAnimationView:Lcom/android/phone/am/SomcAmAnimationView;

    invoke-virtual {v6}, Lcom/android/phone/am/SomcAmManager;->getPlayedDuration()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/am/SomcAmAnimationView;->resumePlayingAnimation(F)V

    .line 503
    :cond_2
    :goto_1
    const v0, 0x7f070080

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mAmCircleIcon:Landroid/widget/ImageView;

    .line 504
    const v0, 0x7f070082

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mAmPlayingCounter:Landroid/widget/TextView;

    .line 505
    const v0, 0x7f070083

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mAmRecordingCounter:Landroid/widget/TextView;

    .line 506
    const v0, 0x7f070084

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mAmIndicator:Landroid/widget/TextView;

    .line 507
    const v0, 0x7f0700ac

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mSpeakerIcon:Landroid/widget/ImageView;

    .line 509
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 510
    .local v7, "r":Landroid/content/res/Resources;
    const v0, 0x7f0a0079

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/phone/LargeCallView;->mMenuHeight:I

    .line 511
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->initDtmfDialPad()V

    .line 512
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->initPopupDialog()V

    .line 513
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->initCallEndedInteractionPanel()V

    .line 514
    return-void

    .line 376
    .end local v6    # "am":Lcom/android/phone/am/SomcAmManager;
    .end local v7    # "r":Landroid/content/res/Resources;
    :cond_3
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 499
    .restart local v6    # "am":Lcom/android/phone/am/SomcAmManager;
    :cond_4
    invoke-virtual {v6}, Lcom/android/phone/am/SomcAmManager;->isAmRecording()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v6}, Lcom/android/phone/am/SomcAmManager;->getRecordedDuration()F

    move-result v0

    cmpl-float v0, v0, v9

    if-eqz v0, :cond_2

    .line 500
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAmAnimationView:Lcom/android/phone/am/SomcAmAnimationView;

    invoke-virtual {v6}, Lcom/android/phone/am/SomcAmManager;->getRecordedDuration()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/am/SomcAmAnimationView;->resumeRecordingAnimation(F)V

    goto :goto_1
.end method

.method private initDtmfDialPad()V
    .locals 3

    .prologue
    .line 1612
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f0700b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 1613
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 1615
    new-instance v0, Lcom/android/phone/SomcDtmfDialPad;

    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/phone/CallView;->isHWQwertyVisible()Z

    move-result v2

    invoke-direct {v0, v1, p0, v2}, Lcom/android/phone/SomcDtmfDialPad;-><init>(Landroid/content/Context;Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mDtmfDialPad:Lcom/android/phone/SomcDtmfDialPad;

    .line 1616
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDtmfDialPad:Lcom/android/phone/SomcDtmfDialPad;

    iget-object v1, p0, Lcom/android/phone/CallView;->listener:Lcom/android/phone/CallView$CallViewActionListener;

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcDtmfDialPad;->setActionListener(Lcom/android/phone/CallView$CallViewActionListener;)V

    .line 1617
    return-void
.end method

.method private initManageConferencePanel()V
    .locals 2

    .prologue
    .line 1722
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mManageConferencePanel:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 1726
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f0700b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 1727
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 1729
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f0700df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mManageConferencePanel:Landroid/view/ViewGroup;

    .line 1731
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mManageConferencePanel:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 1732
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Couldn\'t find manageConferencePanel!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1734
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mManageConferencePanel:Landroid/view/ViewGroup;

    const v1, 0x7f0700e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1736
    new-instance v1, Lcom/android/phone/LargeCallView$9;

    invoke-direct {v1, p0}, Lcom/android/phone/LargeCallView$9;-><init>(Lcom/android/phone/LargeCallView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1756
    :cond_1
    return-void
.end method

.method private initMsgListComponents()V
    .locals 2

    .prologue
    .line 638
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->initOptionMsgAdapter(Ljava/util/List;)V

    .line 639
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->initRejectMsgAdapter(Ljava/util/List;)V

    .line 641
    const v0, 0x7f0700c7

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/SomcSlidingDrawer;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mRejectMsgDrawer:Lcom/android/phone/SomcSlidingDrawer;

    .line 642
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mRejectMsgDrawer:Lcom/android/phone/SomcSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/phone/SomcSlidingDrawer;->getTopOffset()I

    move-result v0

    iput v0, p0, Lcom/android/phone/LargeCallView;->mDrawerTopOffset:I

    .line 643
    const v0, 0x7f0700cc

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mMsgListView:Landroid/widget/ListView;

    .line 644
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mRejectMsgDrawer:Lcom/android/phone/SomcSlidingDrawer;

    new-instance v1, Lcom/android/phone/LargeCallView$7;

    invoke-direct {v1, p0}, Lcom/android/phone/LargeCallView$7;-><init>(Lcom/android/phone/LargeCallView;)V

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcSlidingDrawer;->setOnDrawerOpenListener(Lcom/android/phone/SomcSlidingDrawer$OnDrawerOpenListener;)V

    .line 653
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mRejectMsgDrawer:Lcom/android/phone/SomcSlidingDrawer;

    new-instance v1, Lcom/android/phone/LargeCallView$8;

    invoke-direct {v1, p0}, Lcom/android/phone/LargeCallView$8;-><init>(Lcom/android/phone/LargeCallView;)V

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcSlidingDrawer;->setOnDrawerCloseListener(Lcom/android/phone/SomcSlidingDrawer$OnDrawerCloseListener;)V

    .line 661
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->setOptionsDrawer()V

    .line 662
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->updateOptionDrawerVisibility()V

    .line 663
    return-void
.end method

.method private initOptionMsgAdapter(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/ItemWithIcon;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1983
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mOptionsAdapter:Lcom/android/phone/RejectMsgAdapter;

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->resetAdapter(Lcom/android/phone/RejectMsgAdapter;)Lcom/android/phone/RejectMsgAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mOptionsAdapter:Lcom/android/phone/RejectMsgAdapter;

    .line 1986
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmManager;->getAmAvailability()Lcom/android/phone/am/SomcAmManager$AmAvailability;

    move-result-object v0

    .line 1988
    sget-object v1, Lcom/android/phone/am/SomcAmManager$AmAvailability;->NOT_AVAILABLE:Lcom/android/phone/am/SomcAmManager$AmAvailability;

    if-eq v0, v1, :cond_0

    .line 1989
    new-instance v0, Lcom/android/phone/ItemWithIcon;

    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mContext:Landroid/content/Context;

    const v2, 0x7f0b013f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0200f5

    invoke-direct {v0, v1, v2}, Lcom/android/phone/ItemWithIcon;-><init>(Ljava/lang/String;I)V

    .line 1992
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/phone/ItemWithIcon;->setAction(I)V

    .line 1993
    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mOptionsAdapter:Lcom/android/phone/RejectMsgAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 1995
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mOptionsAdapter:Lcom/android/phone/RejectMsgAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 1996
    return-void
.end method

.method private initPopupDialog()V
    .locals 8

    .prologue
    .line 310
    const/4 v5, 0x4

    new-array v5, v5, [Landroid/view/View;

    const/4 v6, 0x0

    const v7, 0x7f0700bb

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const v7, 0x7f0700d1

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const v7, 0x7f0700cf

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const v7, 0x7f0700d0

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v5, v6

    iput-object v5, p0, Lcom/android/phone/LargeCallView;->mPopupView:[Landroid/view/View;

    .line 317
    new-instance v3, Lcom/android/phone/LargeCallView$4;

    invoke-direct {v3, p0}, Lcom/android/phone/LargeCallView$4;-><init>(Lcom/android/phone/LargeCallView;)V

    .line 347
    .local v3, "popupDialogListener":Landroid/view/View$OnClickListener;
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mPopupView:[Landroid/view/View;

    .local v0, "arr$":[Landroid/view/View;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 348
    .local v4, "v":Landroid/view/View;
    invoke-virtual {v4, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 350
    .end local v4    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private initRejectMsgAdapter(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/ItemWithIcon;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1999
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "init reject messages list"

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->log(Ljava/lang/String;)V

    .line 2000
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mRejectMsgAdapter:Lcom/android/phone/RejectMsgAdapter;

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->resetAdapter(Lcom/android/phone/RejectMsgAdapter;)Lcom/android/phone/RejectMsgAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mRejectMsgAdapter:Lcom/android/phone/RejectMsgAdapter;

    .line 2001
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2002
    const/4 v0, 0x0

    new-instance v1, Lcom/android/phone/ItemWithIcon;

    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mContext:Landroid/content/Context;

    const v3, 0x7f0b010f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0200f8

    invoke-direct {v1, v2, v3}, Lcom/android/phone/ItemWithIcon;-><init>(Ljava/lang/String;I)V

    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2006
    :cond_1
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mRejectMsgAdapter:Lcom/android/phone/RejectMsgAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 2007
    return-void
.end method

.method private isDrawerContentLoaded()Z
    .locals 1

    .prologue
    .line 1597
    iget-boolean v0, p0, Lcom/android/phone/LargeCallView;->mIsDrawerContentLoaded:Z

    return v0
.end method

.method private isLargeHeaderLayoutTall()Z
    .locals 4

    .prologue
    .line 586
    const v2, 0x7f07008c

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 587
    .local v0, "largeHeader":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a002a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    .line 589
    .local v1, "tallHeight":I
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v1, :cond_0

    .line 590
    const/4 v2, 0x1

    .line 592
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isManageConferenceOpen()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1795
    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mManageConferencePanel:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 1796
    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mManageConferencePanel:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 1798
    :cond_0
    return v0
.end method

.method private isSoundRoutingMenuOpen()Z
    .locals 1

    .prologue
    .line 1554
    const v0, 0x7f0700bb

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1492
    const-string v0, "LargeCallView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    return-void
.end method

.method private makeTextViewSingleLine(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    const/4 v0, 0x1

    .line 1471
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1472
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1473
    return-void
.end method

.method private refreshVisibility(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    .line 1975
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1976
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1980
    :goto_0
    return-void

    .line 1978
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private releaseDrawablesAndViews()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 796
    iget-boolean v0, p0, Lcom/android/phone/LargeCallView;->mIsTablet:Z

    if-eqz v0, :cond_1

    .line 797
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f0700b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 799
    if-eqz v0, :cond_0

    .line 800
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 802
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallEndedInteractionPanel:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 803
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallEndedInteractionPanel:Landroid/view/ViewGroup;

    const v1, 0x7f070017

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 805
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallEndedInteractionPanel:Landroid/view/ViewGroup;

    const v1, 0x7f070018

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 807
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallEndedInteractionPanel:Landroid/view/ViewGroup;

    const v1, 0x7f070019

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 809
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallEndedInteractionPanel:Landroid/view/ViewGroup;

    const v1, 0x7f07001a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 811
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallEndedInteractionPanel:Landroid/view/ViewGroup;

    const v1, 0x7f07001b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 816
    :cond_1
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    if-eqz v0, :cond_2

    .line 817
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0}, Lcom/android/phone/SomcInCallButtonPanel;->setImageNull()V

    .line 821
    :cond_2
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mIncomingCallView:Lcom/android/phone/SomcIncomingCallView;

    if-eqz v0, :cond_3

    .line 822
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mIncomingCallView:Lcom/android/phone/SomcIncomingCallView;

    const v1, 0x7f0700de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/SomcSlidingTab;

    .line 824
    invoke-virtual {v0}, Lcom/android/phone/SomcSlidingTab;->setImageNull()V

    .line 827
    :cond_3
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    if-eqz v0, :cond_4

    .line 828
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    invoke-virtual {v0}, Lcom/android/phone/SomcContactPicView;->recycleBitmap()V

    .line 830
    :cond_4
    return-void
.end method

.method private requestLargeHeaderAnimation(Z)V
    .locals 6
    .param p1, "isEnabled"    # Z

    .prologue
    .line 527
    const v4, 0x7f07008c

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 529
    .local v1, "largeHeader":Landroid/view/ViewGroup;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 530
    .local v3, "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    invoke-direct {p0, v1, v3}, Lcom/android/phone/LargeCallView;->setLargeHeaderLayoutTransition(Landroid/view/ViewGroup;Ljava/util/Map;)V

    .line 541
    const v4, 0x7f07008b

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 543
    .local v0, "callerLayout":Landroid/view/ViewGroup;
    invoke-direct {p0, v0, v3}, Lcom/android/phone/LargeCallView;->setLargeHeaderLayoutTransition(Landroid/view/ViewGroup;Ljava/util/Map;)V

    .line 544
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    .line 547
    .local v2, "layoutTransition":Landroid/animation/LayoutTransition;
    iget-object v4, p0, Lcom/android/phone/LargeCallView;->mLargeHeaderAnimationListener:Landroid/animation/LayoutTransition$TransitionListener;

    invoke-virtual {v2, v4}, Landroid/animation/LayoutTransition;->removeTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 548
    if-eqz p1, :cond_0

    .line 550
    iget-object v4, p0, Lcom/android/phone/LargeCallView;->mLargeHeaderAnimationListener:Landroid/animation/LayoutTransition$TransitionListener;

    invoke-virtual {v2, v4}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 552
    :cond_0
    return-void
.end method

.method private resetAdapter(Lcom/android/phone/RejectMsgAdapter;)Lcom/android/phone/RejectMsgAdapter;
    .locals 3

    .prologue
    .line 2010
    if-nez p1, :cond_0

    .line 2011
    new-instance p1, Lcom/android/phone/RejectMsgAdapter;

    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mContext:Landroid/content/Context;

    const v1, 0x7f030024

    const v2, 0x7f0700ce

    invoke-direct {p1, v0, v1, v2}, Lcom/android/phone/RejectMsgAdapter;-><init>(Landroid/content/Context;II)V

    .line 2014
    :cond_0
    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->clear()V

    .line 2015
    return-object p1
.end method

.method private setCallViewMode(Lcom/android/phone/CallView$CallViewMode;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 912
    invoke-virtual {p0}, Lcom/android/phone/LargeCallView;->isDtmfDialPadOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 916
    sget-object v0, Lcom/android/phone/CallView$CallViewMode;->NORMAL_MODE:Lcom/android/phone/CallView$CallViewMode;

    if-ne p1, v0, :cond_1

    .line 917
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->hideManageConferencePanel()V

    .line 918
    const v0, 0x7f07008b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 919
    const v0, 0x7f0700bc

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 920
    const v0, 0x7f0700a5

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 921
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 922
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 932
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/phone/CallView;->mCallViewMode:Lcom/android/phone/CallView$CallViewMode;

    .line 933
    return-void

    .line 923
    :cond_1
    sget-object v0, Lcom/android/phone/CallView$CallViewMode;->MANAGE_CONFERENCE_MODE:Lcom/android/phone/CallView$CallViewMode;

    if-ne p1, v0, :cond_0

    .line 924
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->hideNormalCallLayout()V

    .line 925
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->initManageConferencePanel()V

    .line 926
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->showManageConferenceCallList()V

    .line 927
    sget-object v0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;->DISABLED:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/phone/LargeCallView;->configureWidgetMode(Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;Z)V

    goto :goto_0
.end method

.method private setCallerlayoutTallSizeOff()V
    .locals 3

    .prologue
    .line 2195
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 2198
    const v0, 0x7f07008b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 2199
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2201
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSolidShadowPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2202
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSolidShadowPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int v1, v2, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2203
    return-void
.end method

.method private setCallerlayoutTallSizeOn()V
    .locals 3

    .prologue
    .line 2184
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 2187
    const v0, 0x7f07008b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 2188
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2190
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSolidShadowPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2191
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSolidShadowPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int v1, v2, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2192
    return-void
.end method

.method private setDrawerContentLoaded(Z)V
    .locals 3
    .param p1, "isDrawerContentLoaded"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1586
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/phone/LargeCallView;->mIsDrawerContentLoaded:Z

    .line 1587
    if-eqz p1, :cond_1

    .line 1588
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1589
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMsgListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1594
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 1586
    goto :goto_0

    .line 1591
    :cond_1
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1592
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMsgListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private setEndCallButtonText(I)V
    .locals 2

    .prologue
    .line 1488
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mEndCallButton:Landroid/view/View;

    const v1, 0x7f0700ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1489
    return-void
.end method

.method private setImageNull()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 780
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    if-eqz v0, :cond_0

    .line 781
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 783
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mBgCallContactNumberIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 784
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mBgCallContactNumberIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 786
    :cond_1
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDialerLargeHeaderIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 787
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDialerLargeHeaderIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 789
    :cond_2
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSipIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 790
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSipIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 793
    :cond_3
    return-void
.end method

.method private setLargeHeaderLayoutTallSize(Z)V
    .locals 8
    .param p1, "isTall"    # Z

    .prologue
    const/4 v7, 0x0

    .line 602
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 607
    .local v5, "res":Landroid/content/res/Resources;
    if-eqz p1, :cond_0

    .line 609
    const v6, 0x7f0a0034

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 610
    .local v2, "nameTextSize":F
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    div-float v3, v2, v6

    .line 611
    .local v3, "nameTextSizeInDip":F
    const v6, 0x7f0a0038

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 612
    .local v4, "phoneNumberTextSize":F
    const v6, 0x7f0a002a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v0, v6

    .line 625
    .local v0, "headerHeight":I
    :goto_0
    iget-object v6, p0, Lcom/android/phone/LargeCallView;->mNameOrNumberFGCall:Lcom/android/phone/SomcContactTextView;

    invoke-virtual {v6, v3}, Lcom/android/phone/SomcContactTextView;->setMaxTextSize(F)V

    .line 626
    iget-object v6, p0, Lcom/android/phone/LargeCallView;->mNameOrNumberFGCall:Lcom/android/phone/SomcContactTextView;

    invoke-virtual {v6, v3}, Lcom/android/phone/SomcContactTextView;->setMinTextSize(F)V

    .line 627
    iget-object v6, p0, Lcom/android/phone/LargeCallView;->mNameOrNumberFGCall:Lcom/android/phone/SomcContactTextView;

    invoke-virtual {v6, v7, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 628
    iget-object v6, p0, Lcom/android/phone/LargeCallView;->mPhoneNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v7, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 629
    iget-object v6, p0, Lcom/android/phone/LargeCallView;->mSipUriTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v7, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 630
    iget-object v6, p0, Lcom/android/phone/LargeCallView;->mCityIdTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v7, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 631
    iget-object v6, p0, Lcom/android/phone/LargeCallView;->mSeparatorOfNumberAndCityID:Landroid/widget/TextView;

    invoke-virtual {v6, v7, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 632
    const v6, 0x7f07008c

    invoke-virtual {p0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 633
    .local v1, "largeHeader":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iput v0, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 634
    return-void

    .line 616
    .end local v0    # "headerHeight":I
    .end local v1    # "largeHeader":Landroid/view/ViewGroup;
    .end local v2    # "nameTextSize":F
    .end local v3    # "nameTextSizeInDip":F
    .end local v4    # "phoneNumberTextSize":F
    :cond_0
    const v6, 0x7f0a0037

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 618
    .restart local v2    # "nameTextSize":F
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    div-float v3, v2, v6

    .line 619
    .restart local v3    # "nameTextSizeInDip":F
    const v6, 0x7f0a0039

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 621
    .restart local v4    # "phoneNumberTextSize":F
    const v6, 0x7f0a002b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v0, v6

    .restart local v0    # "headerHeight":I
    goto :goto_0
.end method

.method private setLargeHeaderLayoutTransition(Landroid/view/ViewGroup;Ljava/util/Map;)V
    .locals 7
    .param p1, "vg"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "settings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    const-wide/16 v5, 0x0

    .line 563
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v1

    .line 564
    .local v1, "layoutTransition":Landroid/animation/LayoutTransition;
    if-nez v1, :cond_0

    .line 565
    new-instance v1, Landroid/animation/LayoutTransition;

    .end local v1    # "layoutTransition":Landroid/animation/LayoutTransition;
    invoke-direct {v1}, Landroid/animation/LayoutTransition;-><init>()V

    .line 567
    .restart local v1    # "layoutTransition":Landroid/animation/LayoutTransition;
    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 568
    .local v2, "type":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 569
    invoke-virtual {v1, v2}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 571
    invoke-virtual {v1, v2, v5, v6}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 572
    invoke-virtual {v1, v2, v5, v6}, Landroid/animation/LayoutTransition;->setStagger(IJ)V

    .line 573
    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v3, v4}, Landroid/animation/LayoutTransition;->setDuration(J)V

    goto :goto_0

    .line 575
    :cond_1
    invoke-virtual {v1, v2}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    goto :goto_0

    .line 578
    .end local v2    # "type":I
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 579
    return-void
.end method

.method private setOptionsDrawer()V
    .locals 2

    .prologue
    .line 2057
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMsgListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mOptionsAdapter:Lcom/android/phone/RejectMsgAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2058
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMsgListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mOptionsItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2059
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mRejectMsgDrawer:Lcom/android/phone/SomcSlidingDrawer;

    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->calculateRejectMsgDrawerTopOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcSlidingDrawer;->setTopOffset(I)V

    .line 2060
    return-void
.end method

.method private setRedirectingViewsVisibile(Z)V
    .locals 3
    .param p1, "isVisible"    # Z

    .prologue
    .line 986
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mRedirectingCallMessage:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 988
    .local v0, "ismRedirectingCallMessageEmpty":Z
    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 989
    .local v1, "visibility":I
    :goto_0
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mRedirectingNameOrNumber:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 990
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mRedirectingdNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 991
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mRedirectingCallMessage:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 992
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mRedirectingSeparaterOfNameAndNum:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 993
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mRedirectingPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 994
    return-void

    .line 988
    .end local v1    # "visibility":I
    :cond_0
    const/16 v1, 0x8

    goto :goto_0
.end method

.method private setRejectMsgDrawer()V
    .locals 2

    .prologue
    .line 2051
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMsgListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mRejectMsgAdapter:Lcom/android/phone/RejectMsgAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2052
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMsgListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mRejectMsgItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2053
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mRejectMsgDrawer:Lcom/android/phone/SomcSlidingDrawer;

    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->calculateRejectMsgDrawerTopOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcSlidingDrawer;->setTopOffset(I)V

    .line 2054
    return-void
.end method

.method private setStateInformationText(I)V
    .locals 2

    .prologue
    .line 1636
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mInformationBox:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1637
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallState:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1638
    const v0, 0x7f0b00b4

    if-eq p1, v0, :cond_0

    const v0, 0x7f0b00b3

    if-ne p1, v0, :cond_1

    .line 1640
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallStateSpinner:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1644
    :goto_0
    return-void

    .line 1642
    :cond_1
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallStateSpinner:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setStateInformationText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1624
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mInformationBox:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1625
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallState:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1626
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallStateSpinner:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1627
    return-void
.end method

.method private showCallingProgress()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1253
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcInCallButtonPanel;->setInOutgoingCallState(Z)V

    .line 1255
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDtmfDialPad:Lcom/android/phone/SomcDtmfDialPad;

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcDtmfDialPad;->setDialDisabled(Z)V

    .line 1256
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mInformationBox:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1258
    const v0, 0x7f0b00b4

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->setStateInformationText(I)V

    .line 1259
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallStateInfoLayout:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1260
    return-void
.end method

.method private showManageConferenceCallList()V
    .locals 2

    .prologue
    .line 1759
    iget-object v0, p0, Lcom/android/phone/CallView;->mConferenceCallItemList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1760
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f0700e2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mConferenceList:Landroid/widget/ListView;

    .line 1761
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mConferenceListAdapter:Lcom/android/phone/CallView$ConferenceListAdapter;

    if-nez v0, :cond_0

    .line 1762
    new-instance v0, Lcom/android/phone/CallView$ConferenceListAdapter;

    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CallView$ConferenceListAdapter;-><init>(Lcom/android/phone/CallView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mConferenceListAdapter:Lcom/android/phone/CallView$ConferenceListAdapter;

    .line 1764
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mConferenceListAdapter:Lcom/android/phone/CallView$ConferenceListAdapter;

    iget-boolean v1, p0, Lcom/android/phone/LargeCallView;->mCanSeparate:Z

    invoke-virtual {v0, v1}, Lcom/android/phone/CallView$ConferenceListAdapter;->setCanSeparate(Z)V

    .line 1765
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mConferenceList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mConferenceListAdapter:Lcom/android/phone/CallView$ConferenceListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1766
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mConferenceListAdapter:Lcom/android/phone/CallView$ConferenceListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1767
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mManageConferencePanel:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1769
    :cond_1
    return-void
.end method

.method private showNavigationBar(Z)V
    .locals 1
    .param p1, "showNavigationBar"    # Z

    .prologue
    .line 2315
    const/16 v0, 0x200

    .line 2317
    .local v0, "flags":I
    if-nez p1, :cond_0

    .line 2318
    or-int/lit16 v0, v0, 0x1802

    .line 2322
    :cond_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 2323
    return-void
.end method

.method private showNormalConferenceCallView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1697
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    iget v1, p0, Lcom/android/phone/LargeCallView;->mPhotoAlphaValueActiveCall:I

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcContactPicView;->setAlpha(I)V

    .line 1698
    iget-boolean v0, p0, Lcom/android/phone/LargeCallView;->mIsTablet:Z

    if-eqz v0, :cond_0

    .line 1699
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSomcTabletRightPanel:Lcom/android/phone/SomcTabletRightPanel;

    invoke-virtual {v0, v2}, Lcom/android/phone/SomcTabletRightPanel;->showTabletRightPanelHeaderVisibility(I)V

    .line 1700
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, v3}, Lcom/android/phone/SomcInCallButtonPanel;->setNavigationBarShowMargins(Z)V

    .line 1701
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSomcTabletRightPanel:Lcom/android/phone/SomcTabletRightPanel;

    invoke-virtual {v0, v2}, Lcom/android/phone/SomcTabletRightPanel;->showTabletRightPanelCoverVisibility(Z)V

    .line 1702
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mEndCallButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1704
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, v2, v2}, Lcom/android/phone/SomcInCallButtonPanel;->setHeldCallButtonValue(ZZ)V

    .line 1705
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, v3}, Lcom/android/phone/SomcInCallButtonPanel;->show(Z)V

    .line 1706
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mConferenceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1707
    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mWaitingCallPanel:Lcom/android/phone/LargeCallView$WaitingCallPanel;

    iget-boolean v0, p0, Lcom/android/phone/LargeCallView;->mIsTablet:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/phone/LargeCallView$WaitingCallPanel;->setVisibility(I)V

    .line 1711
    sget-object v0, Lcom/android/phone/CallView$CallViewMode;->NORMAL_MODE:Lcom/android/phone/CallView$CallViewMode;

    invoke-virtual {p0, v0}, Lcom/android/phone/LargeCallView;->setCallViewMode(Lcom/android/phone/CallView$CallViewMode;)V

    .line 1712
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallTime:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1714
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mNameOrNumberFGCall:Lcom/android/phone/SomcContactTextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1715
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mNameOrNumberFGCall:Lcom/android/phone/SomcContactTextView;

    const v1, 0x7f0b0053

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1717
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/phone/CallView;->mConferenceCallItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->log(Ljava/lang/String;)V

    .line 1719
    :cond_1
    return-void

    .line 1707
    :cond_2
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private toggleWidgetMenu()V
    .locals 1

    .prologue
    .line 2445
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "toggleWidgetMenu"

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->log(Ljava/lang/String;)V

    .line 2446
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mWidgetMenu:Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

    if-eqz v0, :cond_1

    .line 2447
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mWidgetMenu:Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

    invoke-virtual {v0}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2448
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mWidgetMenu:Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

    invoke-virtual {v0}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->collapse()V

    .line 2453
    :cond_1
    :goto_0
    return-void

    .line 2450
    :cond_2
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mWidgetMenu:Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

    invoke-virtual {v0}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->expand()V

    goto :goto_0
.end method

.method private triggerDrawerStateChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 666
    iget v0, p0, Lcom/android/phone/LargeCallView;->mDrawerNextState:I

    packed-switch v0, :pswitch_data_0

    .line 688
    :goto_0
    :pswitch_0
    const/16 v0, 0x19

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/CallView;->fireAction(ILjava/lang/Object;)V

    .line 689
    return-void

    .line 668
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/phone/LargeCallView;->isRejectMsgListOpened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 669
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->setRejectMsgDrawer()V

    .line 670
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mRejectMsgDrawer:Lcom/android/phone/SomcSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/phone/SomcSlidingDrawer;->animateOpen()V

    .line 671
    iput v1, p0, Lcom/android/phone/LargeCallView;->mDrawerNextState:I

    .line 675
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/phone/LargeCallView;->showNavigationBar(Z)V

    goto :goto_0

    .line 673
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mRejectMsgDrawer:Lcom/android/phone/SomcSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/phone/SomcSlidingDrawer;->animateClose()V

    goto :goto_1

    .line 678
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/phone/LargeCallView;->isRejectMsgListOpened()Z

    move-result v0

    if-nez v0, :cond_1

    .line 679
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->setOptionsDrawer()V

    .line 682
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->showNavigationBar(Z)V

    goto :goto_0

    .line 684
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/phone/LargeCallView;->showNavigationBar(Z)V

    goto :goto_0

    .line 666
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateCallRecordingTimeVisibility()V
    .locals 1

    .prologue
    .line 2146
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallRecordingTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/phone/LargeCallView;->setCallRecordingOn(Z)V

    .line 2147
    return-void

    .line 2146
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateCityIdVisibility(Z)V
    .locals 2
    .param p1, "isVisibleIfExists"    # Z

    .prologue
    .line 1939
    if-eqz p1, :cond_0

    .line 1940
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCityIdTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->refreshVisibility(Landroid/widget/TextView;)V

    .line 1944
    :goto_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSeparatorOfNumberAndCityID:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mCityIdTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1945
    return-void

    .line 1942
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCityIdTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateOptionDrawerVisibility()V
    .locals 2

    .prologue
    .line 2043
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mOptionsAdapter:Lcom/android/phone/RejectMsgAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 2044
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mRejectMsgDrawer:Lcom/android/phone/SomcSlidingDrawer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2048
    :goto_0
    return-void

    .line 2046
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mRejectMsgDrawer:Lcom/android/phone/SomcSlidingDrawer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateWidgetAreaHeight(Z)V
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 2478
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mWidgetMenu:Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

    if-eqz v0, :cond_3

    .line 2479
    const v0, 0x7f0700ad

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2480
    const v1, 0x7f07008d

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2482
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v3, 0x7f0700af

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 2483
    iget-object v3, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v4, 0x7f0700b0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 2484
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->getLargeHeaderHeight()I

    move-result v5

    .line 2485
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 2487
    if-eqz v0, :cond_0

    .line 2488
    int-to-float v6, v5

    invoke-virtual {v0, v6}, Landroid/view/View;->setY(F)V

    .line 2490
    :cond_0
    if-eqz v1, :cond_1

    .line 2491
    int-to-float v6, v5

    invoke-virtual {v1, v6}, Landroid/view/View;->setY(F)V

    .line 2494
    :cond_1
    if-eqz p1, :cond_4

    .line 2495
    iget-object v4, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v6, 0x7f0700a7

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 2496
    invoke-virtual {v4}, Landroid/view/View;->getY()F

    move-result v4

    float-to-int v4, v4

    .line 2497
    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/phone/LargeCallView;->mWidgetLayerHeight:I

    .line 2506
    :goto_0
    if-eqz v0, :cond_2

    .line 2507
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    iget v5, p0, Lcom/android/phone/LargeCallView;->mWidgetLayerHeight:I

    invoke-direct {v4, v7, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2510
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, p0, Lcom/android/phone/LargeCallView;->mWidgetLayerHeight:I

    invoke-direct {v0, v7, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2513
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/android/phone/LargeCallView;->mWidgetLayerHeight:I

    invoke-direct {v0, v7, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2516
    :cond_2
    if-eqz v1, :cond_3

    .line 2517
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/android/phone/LargeCallView;->mWidgetLayerHeight:I

    invoke-direct {v0, v7, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2521
    :cond_3
    return-void

    .line 2500
    :cond_4
    const v6, 0x7f0a0004

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 2503
    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/phone/LargeCallView;->mWidgetLayerHeight:I

    goto :goto_0
.end method

.method private updateWidgetMenuMode(Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;)V
    .locals 2

    .prologue
    .line 2608
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateWidgetMenuMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->log(Ljava/lang/String;)V

    .line 2609
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mWidgetMenu:Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

    if-nez v0, :cond_1

    .line 2610
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->createWidgetMenu()V

    .line 2612
    :cond_1
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mWidgetMenu:Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

    invoke-virtual {v0, p1}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->updateMenuMode(Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;)V

    .line 2613
    return-void
.end method


# virtual methods
.method public cleanUpWidgetMenu()V
    .locals 2

    .prologue
    .line 2574
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v1, "WidgetMenu"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 2575
    if-eqz v0, :cond_0

    .line 2576
    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 2577
    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 2578
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 2579
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mWidgetMenu:Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

    .line 2581
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 1431
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->cleanUpWidgets()V

    .line 1432
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->hideNormalCallLayout()V

    .line 1433
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mConferenceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1434
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->setImageNull()V

    .line 1435
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, v2}, Lcom/android/phone/SomcInCallButtonPanel;->hide(Z)V

    .line 1436
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1437
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallTime:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1438
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDialerLargeHeaderIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1439
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->setStateInformationText(Ljava/lang/String;)V

    .line 1440
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mInformationBox:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1441
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mPhoneNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1442
    invoke-direct {p0, v2}, Lcom/android/phone/LargeCallView;->setRedirectingViewsVisibile(Z)V

    .line 1443
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSipUriTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1444
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSipIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1445
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mIncomingCallView:Lcom/android/phone/SomcIncomingCallView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1446
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mhideIncomingCallPanelAnim:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 1447
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mhideIncomingCallPanelAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1448
    iput-object v3, p0, Lcom/android/phone/LargeCallView;->mhideIncomingCallPanelAnim:Landroid/view/animation/Animation;

    .line 1450
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1451
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1452
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mNameOrNumberFGCall:Lcom/android/phone/SomcContactTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1453
    invoke-direct {p0, v2}, Lcom/android/phone/LargeCallView;->updateCityIdVisibility(Z)V

    .line 1454
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mHDIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 1455
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mHDIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1457
    :cond_1
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallStateInfoLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1458
    iget-boolean v0, p0, Lcom/android/phone/LargeCallView;->mIsTablet:Z

    if-eqz v0, :cond_2

    .line 1459
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mIncomingCallPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1460
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mEndCallButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1461
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSomcTabletRightPanel:Lcom/android/phone/SomcTabletRightPanel;

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcTabletRightPanel;->showTabletRightPanelHeaderVisibility(I)V

    .line 1462
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSomcTabletRightPanel:Lcom/android/phone/SomcTabletRightPanel;

    invoke-virtual {v0}, Lcom/android/phone/SomcTabletRightPanel;->clear()V

    .line 1464
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/phone/LargeCallView;->setSoundRoutingOptionsVisibility(I)V

    .line 1465
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSolidShadowPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1466
    invoke-virtual {p0}, Lcom/android/phone/LargeCallView;->hideRejectMsgList()V

    .line 1467
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->hideCallEndedInteraction()V

    .line 1468
    return-void
.end method

.method public clearDtmfDialPadDigits()V
    .locals 2

    .prologue
    .line 1607
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDtmfDialPad:Lcom/android/phone/SomcDtmfDialPad;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcDtmfDialPad;->setDigits(Ljava/lang/String;)V

    .line 1608
    return-void
.end method

.method public closeDtmfDialPad()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1517
    invoke-virtual {p0}, Lcom/android/phone/LargeCallView;->isDtmfDialPadOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1541
    :cond_0
    :goto_0
    return-void

    .line 1519
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iput-boolean v3, v0, Lcom/android/phone/InCallUiState;->showDialpad:Z

    .line 1520
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDtmfDialPad:Lcom/android/phone/SomcDtmfDialPad;

    invoke-virtual {v0}, Lcom/android/phone/SomcDtmfDialPad;->close()V

    .line 1521
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, v3}, Lcom/android/phone/SomcInCallButtonPanel;->dtmlDialpadOpen(Z)V

    .line 1524
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 1525
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 1526
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1534
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/phone/CallView;->mCallViewMode:Lcom/android/phone/CallView$CallViewMode;

    invoke-virtual {p0, v0}, Lcom/android/phone/LargeCallView;->setCallViewMode(Lcom/android/phone/CallView$CallViewMode;)V

    .line 1535
    iget-object v0, p0, Lcom/android/phone/CallView;->listener:Lcom/android/phone/CallView$CallViewActionListener;

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/phone/CallView$CallViewActionListener;->onActionPerformed(ILjava/lang/Object;)V

    .line 1536
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 1537
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->updateCallRecordingTimeVisibility()V

    .line 1538
    iget-boolean v0, p0, Lcom/android/phone/LargeCallView;->mIsTablet:Z

    if-eqz v0, :cond_0

    .line 1539
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSomcTabletRightPanel:Lcom/android/phone/SomcTabletRightPanel;

    invoke-virtual {v0, v3}, Lcom/android/phone/SomcTabletRightPanel;->showTabletRightPanelCoverVisibility(Z)V

    goto :goto_0

    .line 1529
    :cond_3
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_2

    const-string v0, "Unexpected. mContext is not activity."

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public closeRejectMsgList()V
    .locals 1

    .prologue
    .line 2069
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mRejectMsgDrawer:Lcom/android/phone/SomcSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/phone/SomcSlidingDrawer;->animateClose()V

    .line 2070
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2087
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mNameOrNumberFGCall:Lcom/android/phone/SomcContactTextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/LargeCallView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 2088
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mPhoneNumberTextView:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/LargeCallView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 2089
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mInformationBox:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/LargeCallView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 2090
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCityIdTextView:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/LargeCallView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 2091
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallState:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/LargeCallView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 2092
    const/4 v0, 0x1

    return v0
.end method

.method public getButtonPanel()Lcom/android/phone/SomcInCallButtonPanel;
    .locals 1

    .prologue
    .line 843
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    return-object v0
.end method

.method public getDtmfDialPadDigits()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1545
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDtmfDialPad:Lcom/android/phone/SomcDtmfDialPad;

    invoke-virtual {v0}, Lcom/android/phone/SomcDtmfDialPad;->getDigits()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleBackKey()Z
    .locals 2

    .prologue
    .line 1772
    const/4 v0, 0x0

    .line 1774
    .local v0, "handled":Z
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->isSoundRoutingMenuOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1775
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/phone/LargeCallView;->setSoundRoutingOptionsVisibility(I)V

    .line 1776
    const/4 v0, 0x1

    .line 1791
    :cond_0
    :goto_0
    return v0

    .line 1777
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/LargeCallView;->isDtmfDialPadOpen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1778
    invoke-virtual {p0}, Lcom/android/phone/LargeCallView;->closeDtmfDialPad()V

    .line 1779
    const/4 v0, 0x1

    goto :goto_0

    .line 1780
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->isManageConferenceOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1786
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->showNormalConferenceCallView()V

    .line 1787
    sget-object v1, Lcom/android/phone/CallView$CallViewMode;->NORMAL_MODE:Lcom/android/phone/CallView$CallViewMode;

    invoke-virtual {p0, v1}, Lcom/android/phone/LargeCallView;->setCallViewMode(Lcom/android/phone/CallView$CallViewMode;)V

    .line 1788
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected hideAmAnimation()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/16 v2, 0x8

    .line 2415
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAmCircleIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAmPlayingCounter:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAmRecordingCounter:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAmIndicator:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAmAnimationView:Lcom/android/phone/am/SomcAmAnimationView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSpeakerIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 2430
    :cond_0
    :goto_0
    return-void

    .line 2421
    :cond_1
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAmCircleIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2422
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAmPlayingCounter:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2423
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAmPlayingCounter:Landroid/widget/TextView;

    invoke-static {v3, v4}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2424
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAmRecordingCounter:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2425
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAmRecordingCounter:Landroid/widget/TextView;

    invoke-static {v3, v4}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2426
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAmIndicator:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2427
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAmAnimationView:Lcom/android/phone/am/SomcAmAnimationView;

    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmAnimationView;->resetPlayingAnimation()V

    .line 2428
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAmAnimationView:Lcom/android/phone/am/SomcAmAnimationView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2429
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSpeakerIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public hideRejectMsgList()V
    .locals 2

    .prologue
    .line 2074
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "LargeCallView"

    const-string v1, "hideRejectMsgList"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2075
    :cond_0
    invoke-static {}, Lcom/android/phone/SomcRejectMsgManager;->getInstance()Lcom/android/phone/SomcRejectMsgManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/SomcRejectMsgManager;->dismissPopup()V

    .line 2076
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mRejectMsgDrawer:Lcom/android/phone/SomcSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/phone/SomcSlidingDrawer;->close()V

    .line 2077
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mRejectMsgDrawer:Lcom/android/phone/SomcSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/phone/SomcSlidingDrawer;->resetStatus()V

    .line 2078
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mRejectMsgDrawer:Lcom/android/phone/SomcSlidingDrawer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2079
    return-void
.end method

.method public initRejectMsgList(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/ItemWithIcon;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2020
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2021
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2022
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2024
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 2025
    new-instance v2, Lcom/android/phone/ItemWithIcon;

    iget-object v3, p0, Lcom/android/phone/LargeCallView;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0140

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0200fc

    invoke-direct {v2, v3, v4}, Lcom/android/phone/ItemWithIcon;-><init>(Ljava/lang/String;I)V

    .line 2028
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/phone/ItemWithIcon;->setAction(I)V

    .line 2029
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2034
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->initOptionMsgAdapter(Ljava/util/List;)V

    .line 2035
    invoke-direct {p0, v1}, Lcom/android/phone/LargeCallView;->initRejectMsgAdapter(Ljava/util/List;)V

    .line 2037
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->setDrawerContentLoaded(Z)V

    .line 2038
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->setOptionsDrawer()V

    .line 2039
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->updateOptionDrawerVisibility()V

    .line 2040
    return-void
.end method

.method public isDtmfDialPadOpen()Z
    .locals 1

    .prologue
    .line 1550
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDtmfDialPad:Lcom/android/phone/SomcDtmfDialPad;

    invoke-virtual {v0}, Lcom/android/phone/SomcDtmfDialPad;->isOpen()Z

    move-result v0

    return v0
.end method

.method public isEndCallInteractionOpened()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2773
    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mCallEndedInteractionPanel:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 2774
    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mCallEndedInteractionPanel:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 2776
    :cond_0
    return v0
.end method

.method public isRejectMsgListOpened()Z
    .locals 1

    .prologue
    .line 2064
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mRejectMsgDrawer:Lcom/android/phone/SomcSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/phone/SomcSlidingDrawer;->isOpened()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 1376
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1414
    :goto_0
    return-void

    .line 1380
    :sswitch_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/CallView;->fireAction(ILjava/lang/Object;)V

    goto :goto_0

    .line 1385
    :sswitch_1
    const/4 v0, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/CallView;->fireAction(ILjava/lang/Object;)V

    goto :goto_0

    .line 1389
    :sswitch_2
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->toggleWidgetMenu()V

    goto :goto_0

    .line 1395
    :sswitch_3
    sget-object v0, Lcom/android/phone/CallView$CallViewMode;->MANAGE_CONFERENCE_MODE:Lcom/android/phone/CallView$CallViewMode;

    invoke-virtual {p0, v0}, Lcom/android/phone/LargeCallView;->setCallViewMode(Lcom/android/phone/CallView$CallViewMode;)V

    goto :goto_0

    .line 1399
    :sswitch_4
    const/16 v0, 0x23

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/CallView;->fireAction(ILjava/lang/Object;)V

    goto :goto_0

    .line 1403
    :sswitch_5
    const/16 v0, 0x24

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/CallView;->fireAction(ILjava/lang/Object;)V

    goto :goto_0

    .line 1407
    :sswitch_6
    const/16 v0, 0x25

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/CallView;->fireAction(ILjava/lang/Object;)V

    goto :goto_0

    .line 1411
    :sswitch_7
    const/16 v0, 0x26

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/CallView;->fireAction(ILjava/lang/Object;)V

    goto :goto_0

    .line 1376
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f070010 -> :sswitch_5
        0x7f070011 -> :sswitch_4
        0x7f070012 -> :sswitch_6
        0x7f070013 -> :sswitch_7
        0x7f07008f -> :sswitch_2
        0x7f070094 -> :sswitch_1
        0x7f070097 -> :sswitch_0
        0x7f0700a6 -> :sswitch_3
    .end sparse-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1962
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDtmfDialPad:Lcom/android/phone/SomcDtmfDialPad;

    invoke-virtual {v0}, Lcom/android/phone/SomcDtmfDialPad;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1963
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDtmfDialPad:Lcom/android/phone/SomcDtmfDialPad;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/phone/SomcDtmfDialPad;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    .line 1966
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1953
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0}, Lcom/android/phone/SomcInCallButtonPanel;->onPause()V

    .line 1954
    return-void
.end method

.method public openDtmfDialPad()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1559
    invoke-virtual {p0}, Lcom/android/phone/LargeCallView;->isDtmfDialPadOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1583
    :goto_0
    return-void

    .line 1562
    :cond_0
    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mSolidShadowPanel:Landroid/widget/RelativeLayout;

    iget-boolean v0, p0, Lcom/android/phone/LargeCallView;->mIsTablet:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1565
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 1566
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 1567
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1573
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, v3}, Lcom/android/phone/SomcInCallButtonPanel;->dtmlDialpadOpen(Z)V

    .line 1574
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDtmfDialPad:Lcom/android/phone/SomcDtmfDialPad;

    invoke-virtual {v0}, Lcom/android/phone/SomcDtmfDialPad;->open()V

    .line 1575
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iput-boolean v3, v0, Lcom/android/phone/InCallUiState;->showDialpad:Z

    .line 1576
    iget-object v0, p0, Lcom/android/phone/CallView;->listener:Lcom/android/phone/CallView$CallViewActionListener;

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/phone/CallView$CallViewActionListener;->onActionPerformed(ILjava/lang/Object;)V

    .line 1577
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->updateCallRecordingTimeVisibility()V

    .line 1578
    iget-boolean v0, p0, Lcom/android/phone/LargeCallView;->mIsTablet:Z

    if-eqz v0, :cond_4

    .line 1579
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSomcTabletRightPanel:Lcom/android/phone/SomcTabletRightPanel;

    invoke-virtual {v0, v3}, Lcom/android/phone/SomcTabletRightPanel;->showTabletRightPanelCoverVisibility(Z)V

    goto :goto_0

    .line 1562
    :cond_2
    const/16 v0, 0x8

    goto :goto_1

    .line 1570
    :cond_3
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_1

    const-string v0, "Unexpected. mContext is not activity."

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 1581
    :cond_4
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->hideManageConferencePanel()V

    goto :goto_0
.end method

.method public reDraw()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 707
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->releaseDrawablesAndViews()V

    .line 708
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 709
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    .line 710
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mWaitingCallPanel:Lcom/android/phone/LargeCallView$WaitingCallPanel;

    invoke-virtual {v0}, Lcom/android/phone/LargeCallView$WaitingCallPanel;->clear()V

    .line 711
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mManageConferencePanel:Landroid/view/ViewGroup;

    .line 712
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->setImageNull()V

    .line 713
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mConferenceList:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 714
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mConferenceList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 715
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mConferenceList:Landroid/widget/ListView;

    .line 717
    :cond_0
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mConferenceListAdapter:Lcom/android/phone/CallView$ConferenceListAdapter;

    .line 718
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    .line 719
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    .line 721
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mHeldCallPanel:Landroid/widget/RelativeLayout;

    .line 722
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mIncomingCallView:Lcom/android/phone/SomcIncomingCallView;

    .line 723
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mSolidShadowPanel:Landroid/widget/RelativeLayout;

    .line 725
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mRejectMsgDrawer:Lcom/android/phone/SomcSlidingDrawer;

    .line 726
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mMsgListView:Landroid/widget/ListView;

    .line 727
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mNameOrNumberFGCall:Lcom/android/phone/SomcContactTextView;

    .line 728
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mPhoneNumberTextView:Landroid/widget/TextView;

    .line 729
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mCallStateInfoLayout:Landroid/view/ViewGroup;

    .line 730
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mCallState:Landroid/widget/TextView;

    .line 731
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mCallStateSpinner:Landroid/view/View;

    .line 732
    iget-boolean v0, p0, Lcom/android/phone/LargeCallView;->mIsTablet:Z

    if-eqz v0, :cond_1

    .line 733
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mIncomingCallPanel:Landroid/widget/LinearLayout;

    .line 734
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mSomcTabletRightPanel:Lcom/android/phone/SomcTabletRightPanel;

    .line 736
    :cond_1
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mRedirectingNameOrNumber:Landroid/widget/TextView;

    .line 737
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mRedirectingdNumberTextView:Landroid/widget/TextView;

    .line 738
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mRedirectingCallMessage:Landroid/widget/TextView;

    .line 739
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mRedirectingSeparaterOfNameAndNum:Landroid/widget/TextView;

    .line 740
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mRedirectingPanel:Landroid/widget/LinearLayout;

    .line 741
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mSeparatorOfNumberAndCityID:Landroid/widget/TextView;

    .line 743
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mSipUriTextView:Landroid/widget/TextView;

    .line 744
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mSipIcon:Landroid/widget/ImageView;

    .line 745
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mNameOrNumberBGCall:Landroid/widget/TextView;

    .line 746
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mAdditionalCallInfoOfHeldTextView:Landroid/widget/TextView;

    .line 747
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMergeCallsButton:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 748
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMergeCallsButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 749
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mMergeCallsButton:Landroid/widget/LinearLayout;

    .line 751
    :cond_2
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mActiveOnHoldheldCall:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    .line 752
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mActiveOnHoldheldCall:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 753
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mActiveOnHoldheldCall:Landroid/widget/RelativeLayout;

    .line 755
    :cond_3
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mCallTime:Landroid/widget/TextView;

    .line 756
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mConferenceCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_4

    .line 757
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mConferenceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 758
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mConferenceCallButton:Landroid/widget/Button;

    .line 760
    :cond_4
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mInformationBox:Landroid/widget/TextView;

    .line 761
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mCallWidgetMenuButton:Landroid/widget/ImageView;

    .line 762
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mBgCallContactNumberIcon:Landroid/widget/ImageView;

    .line 763
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mDialerLargeHeaderIcon:Landroid/widget/ImageView;

    .line 764
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAmAnimationView:Lcom/android/phone/am/SomcAmAnimationView;

    if-eqz v0, :cond_5

    .line 765
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAmAnimationView:Lcom/android/phone/am/SomcAmAnimationView;

    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmAnimationView;->clear()V

    .line 766
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mAmAnimationView:Lcom/android/phone/am/SomcAmAnimationView;

    .line 768
    :cond_5
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mAmCircleIcon:Landroid/widget/ImageView;

    .line 769
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mAmPlayingCounter:Landroid/widget/TextView;

    .line 770
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mAmRecordingCounter:Landroid/widget/TextView;

    .line 771
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mAmIndicator:Landroid/widget/TextView;

    .line 772
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mSpeakerIcon:Landroid/widget/ImageView;

    .line 773
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->initComponents()V

    .line 774
    return-void
.end method

.method public refreshSoundStates()V
    .locals 4

    .prologue
    .line 1499
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    if-eqz v0, :cond_0

    .line 1500
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    iget-boolean v1, p0, Lcom/android/phone/CallView;->mSpeakerIsOn:Z

    iget-boolean v2, p0, Lcom/android/phone/CallView;->mBluetoothAudioIsOn:Z

    iget-boolean v3, p0, Lcom/android/phone/CallView;->mBluetoothHeadsetIsConnected:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/SomcInCallButtonPanel;->setRouteSoundButtonState(ZZZ)V

    .line 1502
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    iget-boolean v1, p0, Lcom/android/phone/CallView;->mMicIsMuted:Z

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcInCallButtonPanel;->setMicMuted(Z)V

    .line 1504
    :cond_0
    return-void
.end method

.method public setActionListener(Lcom/android/phone/CallView$CallViewActionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/phone/CallView$CallViewActionListener;

    .prologue
    .line 834
    iput-object p1, p0, Lcom/android/phone/CallView;->listener:Lcom/android/phone/CallView$CallViewActionListener;

    .line 835
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, p1}, Lcom/android/phone/SomcInCallButtonPanel;->setActionListener(Lcom/android/phone/CallView$CallViewActionListener;)V

    .line 836
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDtmfDialPad:Lcom/android/phone/SomcDtmfDialPad;

    invoke-virtual {v0, p1}, Lcom/android/phone/SomcDtmfDialPad;->setActionListener(Lcom/android/phone/CallView$CallViewActionListener;)V

    .line 838
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/phone/am/SomcAmManager;->setActionListener(Lcom/android/phone/CallView$CallViewActionListener;)V

    .line 839
    return-void
.end method

.method public setBackgroundCallContactNumberIcon(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1363
    if-eqz p1, :cond_0

    .line 1364
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mBgCallContactNumberIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1365
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mBgCallContactNumberIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1369
    :goto_0
    return-void

    .line 1367
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mBgCallContactNumberIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setBackgroundCallInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "additionalCallInfo"    # Ljava/lang/String;
    .param p4, "typeOfNumber"    # Ljava/lang/String;

    .prologue
    .line 1911
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1912
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mNameOrNumberBGCall:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1916
    :goto_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAdditionalCallInfoOfHeldTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1917
    return-void

    .line 1914
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mNameOrNumberBGCall:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/android/phone/SomcPhoneUtils;->formatNoBidiString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setBackgroundCallInfoFor3rdIncoming(Ljava/lang/String;)V
    .locals 1
    .param p1, "nameOrNumber"    # Ljava/lang/String;

    .prologue
    .line 2180
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mWaitingCallPanel:Lcom/android/phone/LargeCallView$WaitingCallPanel;

    # invokes: Lcom/android/phone/LargeCallView$WaitingCallPanel;->setBackgroundCallNameOrNumber(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/android/phone/LargeCallView$WaitingCallPanel;->access$800(Lcom/android/phone/LargeCallView$WaitingCallPanel;Ljava/lang/String;)V

    .line 2181
    return-void
.end method

.method public setCallRecordingOn(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    const/4 v1, 0x0

    .line 2141
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/LargeCallView;->isDtmfDialPadOpen()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->isManageConferenceOpen()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 2142
    .local v0, "shouldShow":Z
    :goto_0
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mCallRecordingPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2143
    return-void

    .end local v0    # "shouldShow":Z
    :cond_0
    move v0, v1

    .line 2141
    goto :goto_0

    .line 2142
    .restart local v0    # "shouldShow":Z
    :cond_1
    const/16 v1, 0x8

    goto :goto_1
.end method

.method public setCallRecordingTime(Ljava/lang/String;)V
    .locals 1
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 2132
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmManager;->isAmWorking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2133
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAmRecordingCounter:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2137
    :goto_0
    return-void

    .line 2135
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallRecordingTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setCallTime(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 1476
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmManager;->isAmWorking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1477
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAmPlayingCounter:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1479
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallTime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1480
    return-void
.end method

.method public setCallViewMode(Lcom/android/phone/CallView$CallViewMode;)V
    .locals 1
    .param p1, "mode"    # Lcom/android/phone/CallView$CallViewMode;

    .prologue
    .line 901
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/phone/LargeCallView;->setCallViewMode(Lcom/android/phone/CallView$CallViewMode;Z)V

    .line 902
    return-void
.end method

.method public setDtmfDialPadDigits(Ljava/lang/String;)V
    .locals 1
    .param p1, "digits"    # Ljava/lang/String;

    .prologue
    .line 1602
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDtmfDialPad:Lcom/android/phone/SomcDtmfDialPad;

    invoke-virtual {v0, p1}, Lcom/android/phone/SomcDtmfDialPad;->setDigits(Ljava/lang/String;)V

    .line 1603
    return-void
.end method

.method public setForegroundCallCityId(Ljava/lang/String;)V
    .locals 1
    .param p1, "CityId"    # Ljava/lang/String;

    .prologue
    .line 1926
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCityIdTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1929
    :goto_0
    return-void

    .line 1927
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCityIdTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1928
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->updateCityIdVisibility(Z)V

    goto :goto_0
.end method

.method public setForegroundCallInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x4

    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 1824
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 1825
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 1826
    invoke-static {p2}, Lcom/android/phone/SomcPhoneUtils;->formatNoBidiString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1828
    if-nez v3, :cond_0

    .line 1829
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mNameOrNumberFGCall:Lcom/android/phone/SomcContactTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1834
    :goto_0
    iget-object v6, p0, Lcom/android/phone/LargeCallView;->mHDIcon:Landroid/widget/ImageView;

    if-eqz p4, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1836
    if-nez v4, :cond_4

    if-nez v3, :cond_4

    .line 1842
    if-eqz p3, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0b0396

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1845
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mPhoneNumberTextView:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1846
    iget-boolean v0, p0, Lcom/android/phone/LargeCallView;->mIsTablet:Z

    if-eqz v0, :cond_2

    .line 1847
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mPhoneNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1851
    :goto_2
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSipUriTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1852
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSipUriTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1853
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSipIcon:Landroid/widget/ImageView;

    const v3, 0x7f02009f

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1854
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSipIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1878
    :goto_3
    invoke-virtual {p0, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 1879
    return-void

    .line 1831
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mNameOrNumberFGCall:Lcom/android/phone/SomcContactTextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1834
    goto :goto_1

    .line 1849
    :cond_2
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mPhoneNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 1859
    :cond_3
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mPhoneNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1860
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mPhoneNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1861
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSipUriTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1862
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSipUriTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1863
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSipIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1864
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSipIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 1867
    :cond_4
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mPhoneNumberTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1868
    iget-boolean v0, p0, Lcom/android/phone/LargeCallView;->mIsTablet:Z

    if-eqz v0, :cond_5

    .line 1869
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mPhoneNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1873
    :goto_4
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSipUriTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1874
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSipUriTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1875
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSipIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1876
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSipIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 1871
    :cond_5
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mPhoneNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method

.method public setForegroundCallInfoForWaitingCall(Ljava/lang/String;I)V
    .locals 2

    .prologue
    const v0, 0x7f020031

    .line 2157
    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mWaitingCallPanel:Lcom/android/phone/LargeCallView$WaitingCallPanel;

    invoke-virtual {v1, p1}, Lcom/android/phone/LargeCallView$WaitingCallPanel;->setNameOrNumber(Ljava/lang/String;)V

    .line 2161
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 2174
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2175
    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mWaitingCallPanel:Lcom/android/phone/LargeCallView$WaitingCallPanel;

    invoke-virtual {v1, v0}, Lcom/android/phone/LargeCallView$WaitingCallPanel;->setPhoto(Landroid/graphics/drawable/Drawable;)V

    .line 2176
    return-void

    .line 2163
    :cond_1
    const/4 v1, 0x3

    if-ne p2, v1, :cond_2

    .line 2164
    const v0, 0x7f020032

    goto :goto_0

    .line 2165
    :cond_2
    const/4 v1, 0x2

    if-ne p2, v1, :cond_3

    .line 2166
    const v0, 0x7f020034

    goto :goto_0

    .line 2167
    :cond_3
    const/4 v1, 0x4

    if-ne p2, v1, :cond_4

    .line 2168
    const v0, 0x7f020030

    goto :goto_0

    .line 2170
    :cond_4
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_0

    .line 2171
    const-string v1, "Unknown type of photo for foreground call."

    invoke-direct {p0, v1}, Lcom/android/phone/LargeCallView;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setForegroundCallInfoForWaitingCall(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "nameOrNumber"    # Ljava/lang/String;
    .param p2, "photo"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 2151
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mWaitingCallPanel:Lcom/android/phone/LargeCallView$WaitingCallPanel;

    invoke-virtual {v0, p1}, Lcom/android/phone/LargeCallView$WaitingCallPanel;->setNameOrNumber(Ljava/lang/String;)V

    .line 2152
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mWaitingCallPanel:Lcom/android/phone/LargeCallView$WaitingCallPanel;

    invoke-virtual {v0, p2}, Lcom/android/phone/LargeCallView$WaitingCallPanel;->setPhoto(Landroid/graphics/drawable/Drawable;)V

    .line 2153
    return-void
.end method

.method public setForegroundCallPhoto(I)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1319
    .line 1320
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    invoke-virtual {v2, v0}, Lcom/android/phone/SomcContactPicView;->setFrameVisible(Z)V

    .line 1322
    if-ne p1, v0, :cond_0

    .line 1323
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    const v2, 0x7f020031

    invoke-virtual {v1, v2}, Lcom/android/phone/SomcContactPicView;->setImage(I)V

    .line 1338
    :goto_0
    if-eqz v0, :cond_5

    .line 1339
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1343
    :goto_1
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1347
    :goto_2
    return-void

    .line 1324
    :cond_0
    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    .line 1325
    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/SomcContactPicView;->setFrameVisible(Z)V

    .line 1326
    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    const v2, 0x7f020032

    invoke-virtual {v1, v2}, Lcom/android/phone/SomcContactPicView;->setImage(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1344
    :catch_0
    move-exception v0

    .line 1345
    const-string v1, "LargeCallView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setForegroundCallPhoto failed ! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1327
    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 1328
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/SomcContactPicView;->setFrameVisible(Z)V

    .line 1329
    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    const v2, 0x7f020034

    invoke-virtual {v1, v2}, Lcom/android/phone/SomcContactPicView;->setImage(I)V

    goto :goto_0

    .line 1330
    :cond_2
    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    .line 1331
    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    const v2, 0x7f020030

    invoke-virtual {v1, v2}, Lcom/android/phone/SomcContactPicView;->setImage(I)V

    goto :goto_0

    .line 1333
    :cond_3
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_4

    const-string v0, "Unknown type of photo for foreground call."

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->log(Ljava/lang/String;)V

    :cond_4
    move v0, v1

    .line 1334
    goto :goto_0

    .line 1341
    :cond_5
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public setForegroundCallPhoto(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 1351
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcContactPicView;->setFrameVisible(Z)V

    .line 1353
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    invoke-virtual {v0, p1}, Lcom/android/phone/SomcContactPicView;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 1354
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1355
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1359
    :goto_0
    return-void

    .line 1356
    :catch_0
    move-exception v0

    .line 1357
    const-string v1, "LargeCallView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setForegroundCallPhoto failed ! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setForegroundRedirectingCallInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1890
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 1891
    invoke-static {p2}, Lcom/android/phone/SomcPhoneUtils;->formatNoBidiString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1892
    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mRedirectingNameOrNumber:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    move-object p1, v0

    :cond_0
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1893
    iget-object v4, p0, Lcom/android/phone/LargeCallView;->mRedirectingdNumberTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    move-object v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1894
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1895
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mRedirectingCallMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1896
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mRedirectingSeparaterOfNameAndNum:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1897
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mRedirectingPanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1906
    :goto_1
    return-void

    :cond_1
    move-object v1, v0

    .line 1893
    goto :goto_0

    .line 1899
    :cond_2
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mRedirectingCallMessage:Landroid/widget/TextView;

    const v1, 0x7f0b0122

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1900
    if-nez v3, :cond_3

    .line 1901
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mRedirectingSeparaterOfNameAndNum:Landroid/widget/TextView;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1903
    :cond_3
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mRedirectingPanel:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1
.end method

.method public setMicButtonEnabled(Z)V
    .locals 1
    .param p1, "isEnabled"    # Z

    .prologue
    .line 1512
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, p1}, Lcom/android/phone/SomcInCallButtonPanel;->setMicButtonEnabled(Z)V

    .line 1513
    return-void
.end method

.method public setSoundRoutingOptionsVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 353
    const v0, 0x7f0700bb

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 354
    return-void
.end method

.method public showAllCallsEndedLayout(Ljava/lang/String;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1127
    sget-object v0, Lcom/android/phone/CallView$CallViewMode;->NORMAL_MODE:Lcom/android/phone/CallView$CallViewMode;

    invoke-direct {p0, v0, v1}, Lcom/android/phone/LargeCallView;->setCallViewMode(Lcom/android/phone/CallView$CallViewMode;Z)V

    .line 1128
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    iget v3, p0, Lcom/android/phone/LargeCallView;->mPhotoAlphaValueActiveCall:I

    invoke-virtual {v0, v3}, Lcom/android/phone/SomcContactPicView;->setAlpha(I)V

    .line 1129
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mConferenceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1130
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mIncomingCallView:Lcom/android/phone/SomcIncomingCallView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1131
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->hideCallingProgress()V

    .line 1132
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDialerLargeHeaderIcon:Landroid/widget/ImageView;

    const v3, 0x7f020053

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1133
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDialerLargeHeaderIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1134
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mInformationBox:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1135
    iget-object v3, p0, Lcom/android/phone/LargeCallView;->mSolidShadowPanel:Landroid/widget/RelativeLayout;

    iget-boolean v0, p0, Lcom/android/phone/LargeCallView;->mIsTablet:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1136
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1137
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mPhoneNumberTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->refreshVisibility(Landroid/widget/TextView;)V

    .line 1138
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSipUriTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->refreshVisibility(Landroid/widget/TextView;)V

    .line 1139
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSipIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1140
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSipIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1144
    :goto_1
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mNameOrNumberFGCall:Lcom/android/phone/SomcContactTextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1147
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/phone/LargeCallView;->setLargeHeaderLayoutTallSize(Z)V

    .line 1148
    invoke-virtual {p0}, Lcom/android/phone/LargeCallView;->hideRejectMsgList()V

    .line 1149
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmManager;->isAmWorking()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1150
    invoke-virtual {p0}, Lcom/android/phone/LargeCallView;->hideAmAnimation()V

    .line 1151
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1153
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/LargeCallView;->setStateInformationText(Ljava/lang/String;)V

    .line 1154
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallStateInfoLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1155
    iget-boolean v0, p0, Lcom/android/phone/LargeCallView;->mIsTablet:Z

    if-eqz v0, :cond_4

    .line 1156
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSomcTabletRightPanel:Lcom/android/phone/SomcTabletRightPanel;

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcTabletRightPanel;->showTabletRightPanelHeaderVisibility(I)V

    .line 1157
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mIncomingCallPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1158
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcInCallButtonPanel;->show(Z)V

    .line 1159
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0}, Lcom/android/phone/SomcInCallButtonPanel;->disableAllButton()V

    .line 1160
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, v4}, Lcom/android/phone/SomcInCallButtonPanel;->setNavigationBarShowMargins(Z)V

    .line 1161
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mEndCallButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1166
    :goto_2
    invoke-direct {p0, v4}, Lcom/android/phone/LargeCallView;->showNavigationBar(Z)V

    .line 1167
    sget-object v0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;->DISABLED:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;

    invoke-direct {p0, v0, v4}, Lcom/android/phone/LargeCallView;->configureWidgetMode(Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;Z)V

    .line 1168
    return-void

    :cond_2
    move v0, v2

    .line 1135
    goto :goto_0

    .line 1142
    :cond_3
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSipIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 1163
    :cond_4
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, p2}, Lcom/android/phone/SomcInCallButtonPanel;->hide(Z)V

    .line 1164
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->setCallerlayoutTallSizeOff()V

    goto :goto_2
.end method

.method protected showAmPlayingAnimation()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 2327
    const v0, 0x7f0b0141

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->setStateInformationText(I)V

    .line 2328
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mInformationBox:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2329
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDialerLargeHeaderIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2330
    invoke-direct {p0, v7}, Lcom/android/phone/LargeCallView;->setLargeHeaderLayoutTallSize(Z)V

    .line 2331
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallTime:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2332
    invoke-virtual {p0, v5}, Lcom/android/phone/LargeCallView;->showOptionMenuButton(Z)V

    .line 2333
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSpeakerIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2336
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAmCircleIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2337
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAmPlayingCounter:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2338
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAmRecordingCounter:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2339
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAmIndicator:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2340
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAmIndicator:Landroid/widget/TextView;

    const-string v1, "%s \"%s\""

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0142

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/am/SomcAmManager;->getSelectedGreetingName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2343
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAmAnimationView:Lcom/android/phone/am/SomcAmAnimationView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2346
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    iget v1, p0, Lcom/android/phone/LargeCallView;->mPhotoAlphaValueAnsweringMachine:I

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcContactPicView;->setAlpha(I)V

    .line 2347
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mIncomingCallView:Lcom/android/phone/SomcIncomingCallView;

    invoke-virtual {v0}, Lcom/android/phone/SomcIncomingCallView;->setSingleCallSliderMarginBottom()V

    .line 2348
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mIncomingCallView:Lcom/android/phone/SomcIncomingCallView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2349
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSolidShadowPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2350
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallStateInfoLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2351
    iget-boolean v0, p0, Lcom/android/phone/LargeCallView;->mIsTablet:Z

    if-eqz v0, :cond_0

    .line 2352
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mIncomingCallPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2353
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mEndCallButton:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2354
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSomcTabletRightPanel:Lcom/android/phone/SomcTabletRightPanel;

    invoke-virtual {v0, v7}, Lcom/android/phone/SomcTabletRightPanel;->showTabletRightPanelCoverVisibility(Z)V

    .line 2355
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, v7}, Lcom/android/phone/SomcInCallButtonPanel;->setNavigationBarShowMargins(Z)V

    .line 2356
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSomcTabletRightPanel:Lcom/android/phone/SomcTabletRightPanel;

    invoke-virtual {v0, v6}, Lcom/android/phone/SomcTabletRightPanel;->showTabletRightPanelHeaderVisibility(I)V

    .line 2357
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, v5}, Lcom/android/phone/SomcInCallButtonPanel;->show(Z)V

    .line 2358
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0}, Lcom/android/phone/SomcInCallButtonPanel;->disableAllButton()V

    .line 2363
    :goto_0
    sget-object v0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;->DISABLED:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;

    invoke-direct {p0, v0, v7}, Lcom/android/phone/LargeCallView;->configureWidgetMode(Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;Z)V

    .line 2364
    return-void

    .line 2360
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, v5}, Lcom/android/phone/SomcInCallButtonPanel;->hide(Z)V

    .line 2361
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->setCallerlayoutTallSizeOn()V

    goto :goto_0
.end method

.method protected showAmRecordingAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 2372
    const v0, 0x7f0b0141

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->setStateInformationText(I)V

    .line 2373
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mInformationBox:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2374
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDialerLargeHeaderIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2375
    invoke-direct {p0, v4}, Lcom/android/phone/LargeCallView;->setLargeHeaderLayoutTallSize(Z)V

    .line 2376
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallTime:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2377
    invoke-virtual {p0, v2}, Lcom/android/phone/LargeCallView;->showOptionMenuButton(Z)V

    .line 2380
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAmCircleIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2381
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAmPlayingCounter:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2382
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAmRecordingCounter:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2383
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAmIndicator:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2384
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAmIndicator:Landroid/widget/TextView;

    const v1, 0x7f0b0143

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2385
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAmAnimationView:Lcom/android/phone/am/SomcAmAnimationView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2388
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    iget v1, p0, Lcom/android/phone/LargeCallView;->mPhotoAlphaValueAnsweringMachine:I

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcContactPicView;->setAlpha(I)V

    .line 2389
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mIncomingCallView:Lcom/android/phone/SomcIncomingCallView;

    invoke-virtual {v0}, Lcom/android/phone/SomcIncomingCallView;->setSingleCallSliderMarginBottom()V

    .line 2390
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mIncomingCallView:Lcom/android/phone/SomcIncomingCallView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2391
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSolidShadowPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2392
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallStateInfoLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2393
    iget-boolean v0, p0, Lcom/android/phone/LargeCallView;->mIsTablet:Z

    if-eqz v0, :cond_0

    .line 2394
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mIncomingCallPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2395
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mEndCallButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2396
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSomcTabletRightPanel:Lcom/android/phone/SomcTabletRightPanel;

    invoke-virtual {v0, v4}, Lcom/android/phone/SomcTabletRightPanel;->showTabletRightPanelCoverVisibility(Z)V

    .line 2397
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, v4}, Lcom/android/phone/SomcInCallButtonPanel;->setNavigationBarShowMargins(Z)V

    .line 2398
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSomcTabletRightPanel:Lcom/android/phone/SomcTabletRightPanel;

    invoke-virtual {v0, v3}, Lcom/android/phone/SomcTabletRightPanel;->showTabletRightPanelHeaderVisibility(I)V

    .line 2399
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, v2}, Lcom/android/phone/SomcInCallButtonPanel;->show(Z)V

    .line 2400
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0}, Lcom/android/phone/SomcInCallButtonPanel;->disableAllButton()V

    .line 2407
    :goto_0
    sget-object v0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;->DISABLED:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;

    invoke-direct {p0, v0, v4}, Lcom/android/phone/LargeCallView;->configureWidgetMode(Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;Z)V

    .line 2408
    return-void

    .line 2402
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/phone/LargeCallView;->toggleSpeakerIcon(Z)V

    .line 2403
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSpeakerIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2404
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, v2}, Lcom/android/phone/SomcInCallButtonPanel;->hide(Z)V

    .line 2405
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->setCallerlayoutTallSizeOn()V

    goto :goto_0
.end method

.method public showCallEndedInteractionLayout(ZLjava/lang/Object;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 2732
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2734
    invoke-virtual {p0, v0, v5}, Lcom/android/phone/LargeCallView;->showAllCallsEndedLayout(Ljava/lang/String;Z)V

    .line 2737
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallEndedInteractionPanel:Landroid/view/ViewGroup;

    const v1, 0x7f070011

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2739
    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mCallEndedInteractionPanel:Landroid/view/ViewGroup;

    const v2, 0x7f070010

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2741
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mCallEndedInteractionPanel:Landroid/view/ViewGroup;

    const v3, 0x7f070012

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2743
    iget-object v3, p0, Lcom/android/phone/LargeCallView;->mCallEndedInteractionPanel:Landroid/view/ViewGroup;

    const v4, 0x7f070013

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 2746
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2747
    invoke-virtual {v1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2748
    if-eqz p1, :cond_0

    .line 2749
    invoke-virtual {v2, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2750
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2751
    invoke-virtual {v3, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2752
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2759
    :goto_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallEndedInteractionPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2760
    return-void

    .line 2754
    :cond_0
    invoke-virtual {v2, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2755
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2756
    invoke-virtual {v3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2757
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showConferenceCallLayout(ZZ)V
    .locals 7

    .prologue
    const v6, 0x7f0b00b0

    const/4 v5, 0x1

    const/4 v0, 0x0

    const/16 v1, 0x8

    .line 1648
    iget-object v2, p0, Lcom/android/phone/CallView;->mConferenceCallItemList:Ljava/util/List;

    if-eqz v2, :cond_5

    .line 1649
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->hideCallingProgress()V

    .line 1650
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mHeldCallPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1652
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mDialerLargeHeaderIcon:Landroid/widget/ImageView;

    const v3, 0x7f02004a

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1653
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mDialerLargeHeaderIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1655
    iput-boolean p2, p0, Lcom/android/phone/LargeCallView;->mCanSeparate:Z

    .line 1658
    new-array v2, v5, [Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/CallView;->mConferenceCallItemList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1659
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    sget-object v4, Lcom/android/phone/LargeCallView;->SRC_TAGS:[Ljava/lang/String;

    invoke-static {v3, v4, v2}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1662
    iget-object v3, p0, Lcom/android/phone/LargeCallView;->mConferenceCallButton:Landroid/widget/Button;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1663
    const v2, 0x7f0b00b2

    invoke-direct {p0, v2}, Lcom/android/phone/LargeCallView;->setEndCallButtonText(I)V

    .line 1665
    const-string v2, ""

    invoke-direct {p0, v2}, Lcom/android/phone/LargeCallView;->setStateInformationText(Ljava/lang/String;)V

    .line 1666
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mInformationBox:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1667
    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->updateCityIdVisibility(Z)V

    .line 1668
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mCallStateInfoLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1669
    iget-boolean v2, p0, Lcom/android/phone/LargeCallView;->mIsTablet:Z

    if-eqz v2, :cond_2

    .line 1670
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mIncomingCallPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1674
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->setLargeHeaderLayoutTallSize(Z)V

    .line 1675
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mIncomingCallView:Lcom/android/phone/SomcIncomingCallView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1676
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mSolidShadowPanel:Landroid/widget/RelativeLayout;

    iget-boolean v3, p0, Lcom/android/phone/LargeCallView;->mIsTablet:Z

    if-eqz v3, :cond_3

    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1678
    iget-object v0, p0, Lcom/android/phone/CallView;->mCallViewMode:Lcom/android/phone/CallView$CallViewMode;

    sget-object v1, Lcom/android/phone/CallView$CallViewMode;->MANAGE_CONFERENCE_MODE:Lcom/android/phone/CallView$CallViewMode;

    if-ne v0, v1, :cond_4

    .line 1680
    sget-object v0, Lcom/android/phone/CallView$CallViewMode;->MANAGE_CONFERENCE_MODE:Lcom/android/phone/CallView$CallViewMode;

    invoke-virtual {p0, v0}, Lcom/android/phone/LargeCallView;->setCallViewMode(Lcom/android/phone/CallView$CallViewMode;)V

    .line 1686
    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/android/phone/LargeCallView;->hideRejectMsgList()V

    .line 1687
    invoke-direct {p0, v5}, Lcom/android/phone/LargeCallView;->showNavigationBar(Z)V

    .line 1688
    sget-object v0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;->DISABLED:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;

    invoke-direct {p0, v0, v5}, Lcom/android/phone/LargeCallView;->configureWidgetMode(Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;Z)V

    .line 1694
    :cond_1
    :goto_3
    return-void

    .line 1672
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->setCallerlayoutTallSizeOff()V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1676
    goto :goto_1

    .line 1682
    :cond_4
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->showNormalConferenceCallView()V

    .line 1683
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/phone/CallView;->mConferenceCallItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 1690
    :cond_5
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_1

    .line 1691
    const-string v0, "Error: In Conference view without conference participants data"

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->log(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public showEndingLastCallLayout(I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1098
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->isManageConferenceOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/CallView$CallViewMode;->NORMAL_MODE:Lcom/android/phone/CallView$CallViewMode;

    invoke-virtual {p0, v0}, Lcom/android/phone/LargeCallView;->setCallViewMode(Lcom/android/phone/CallView$CallViewMode;)V

    .line 1099
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/LargeCallView;->isDtmfDialPadOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/LargeCallView;->closeDtmfDialPad()V

    .line 1100
    :cond_1
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mConferenceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1101
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mIncomingCallView:Lcom/android/phone/SomcIncomingCallView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1102
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDialerLargeHeaderIcon:Landroid/widget/ImageView;

    const v3, 0x7f020053

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1103
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDialerLargeHeaderIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1104
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mInformationBox:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1105
    iget-object v3, p0, Lcom/android/phone/LargeCallView;->mSolidShadowPanel:Landroid/widget/RelativeLayout;

    iget-boolean v0, p0, Lcom/android/phone/LargeCallView;->mIsTablet:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1106
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    iget v3, p0, Lcom/android/phone/LargeCallView;->mPhotoAlphaValueActiveCall:I

    invoke-virtual {v0, v3}, Lcom/android/phone/SomcContactPicView;->setAlpha(I)V

    .line 1107
    invoke-direct {p0, v1}, Lcom/android/phone/LargeCallView;->setLargeHeaderLayoutTallSize(Z)V

    .line 1108
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmManager;->isAmWorking()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1109
    invoke-virtual {p0}, Lcom/android/phone/LargeCallView;->hideAmAnimation()V

    .line 1110
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1112
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/phone/LargeCallView;->showNavigationBar(Z)V

    .line 1113
    invoke-direct {p0, p1}, Lcom/android/phone/LargeCallView;->setStateInformationText(I)V

    .line 1114
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallStateInfoLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1115
    iget-boolean v0, p0, Lcom/android/phone/LargeCallView;->mIsTablet:Z

    if-eqz v0, :cond_4

    .line 1116
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0}, Lcom/android/phone/SomcInCallButtonPanel;->disableAllButton()V

    .line 1117
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, v4}, Lcom/android/phone/SomcInCallButtonPanel;->setNavigationBarShowMargins(Z)V

    .line 1118
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSomcTabletRightPanel:Lcom/android/phone/SomcTabletRightPanel;

    invoke-virtual {v0, v4}, Lcom/android/phone/SomcTabletRightPanel;->showTabletRightPanelCoverVisibility(Z)V

    .line 1119
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mIncomingCallPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1123
    :goto_1
    return-void

    :cond_3
    move v0, v2

    .line 1105
    goto :goto_0

    .line 1121
    :cond_4
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->setCallerlayoutTallSizeOff()V

    goto :goto_1
.end method

.method public showIncomingCallLayout()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/16 v1, 0x8

    const/4 v3, 0x0

    .line 850
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->hideCallingProgress()V

    .line 852
    invoke-virtual {p0}, Lcom/android/phone/LargeCallView;->closeDtmfDialPad()V

    .line 854
    sget-object v0, Lcom/android/phone/CallView$CallViewMode;->NORMAL_MODE:Lcom/android/phone/CallView$CallViewMode;

    invoke-direct {p0, v0, v3}, Lcom/android/phone/LargeCallView;->setCallViewMode(Lcom/android/phone/CallView$CallViewMode;Z)V

    .line 855
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallStateInfoLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 856
    iget-boolean v0, p0, Lcom/android/phone/LargeCallView;->mIsTablet:Z

    if-eqz v0, :cond_0

    .line 857
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSomcTabletRightPanel:Lcom/android/phone/SomcTabletRightPanel;

    invoke-virtual {v0, v2}, Lcom/android/phone/SomcTabletRightPanel;->showTabletRightPanelCoverVisibility(Z)V

    .line 858
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, v3}, Lcom/android/phone/SomcInCallButtonPanel;->setNavigationBarShowMargins(Z)V

    .line 859
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSomcTabletRightPanel:Lcom/android/phone/SomcTabletRightPanel;

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcTabletRightPanel;->showTabletRightPanelHeaderVisibility(I)V

    .line 860
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, v3}, Lcom/android/phone/SomcInCallButtonPanel;->show(Z)V

    .line 861
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0}, Lcom/android/phone/SomcInCallButtonPanel;->disableAllButton()V

    .line 862
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mEndCallButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 863
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDialerLargeHeaderIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 864
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mIncomingCallPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 870
    :goto_0
    invoke-direct {p0, v2}, Lcom/android/phone/LargeCallView;->setLargeHeaderLayoutTallSize(Z)V

    .line 871
    const v0, 0x7f0b00ae

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->setStateInformationText(I)V

    .line 872
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mInformationBox:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 873
    invoke-direct {p0, v2}, Lcom/android/phone/LargeCallView;->updateCityIdVisibility(Z)V

    .line 875
    invoke-direct {p0, v2}, Lcom/android/phone/LargeCallView;->setRedirectingViewsVisibile(Z)V

    .line 877
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mNameOrNumberFGCall:Lcom/android/phone/SomcContactTextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 878
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    iget v2, p0, Lcom/android/phone/LargeCallView;->mPhotoAlphaValueActiveCall:I

    invoke-virtual {v0, v2}, Lcom/android/phone/SomcContactPicView;->setAlpha(I)V

    .line 879
    const v0, 0x7f0b00af

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->setEndCallButtonText(I)V

    .line 881
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mHeldCallPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 882
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mWaitingCallPanel:Lcom/android/phone/LargeCallView$WaitingCallPanel;

    iget-boolean v0, p0, Lcom/android/phone/LargeCallView;->mIsTablet:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/android/phone/LargeCallView$WaitingCallPanel;->setVisibility(I)V

    .line 884
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 885
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mConferenceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 887
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mIncomingCallView:Lcom/android/phone/SomcIncomingCallView;

    invoke-virtual {v0}, Lcom/android/phone/SomcIncomingCallView;->setSingleCallSliderMarginBottom()V

    .line 888
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mIncomingCallView:Lcom/android/phone/SomcIncomingCallView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 889
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSolidShadowPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 894
    invoke-virtual {p0}, Lcom/android/phone/LargeCallView;->isRejectMsgListOpened()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->showNavigationBar(Z)V

    .line 895
    sget-object v0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;->INCOMING:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;

    invoke-direct {p0, v0, v3}, Lcom/android/phone/LargeCallView;->configureWidgetMode(Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;Z)V

    .line 896
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->hideCallEndedInteraction()V

    .line 897
    return-void

    .line 866
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDialerLargeHeaderIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 867
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, v3}, Lcom/android/phone/SomcInCallButtonPanel;->hide(Z)V

    .line 868
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->setCallerlayoutTallSizeOn()V

    goto :goto_0

    .line 882
    :cond_1
    const/4 v0, 0x4

    goto :goto_1
.end method

.method public showOptionMenuButton(Z)V
    .locals 2
    .param p1, "visibility"    # Z

    .prologue
    .line 2306
    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mOptionMenuButton:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2307
    return-void

    .line 2306
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showSingleCallLayout(ZZZ)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/16 v1, 0x8

    const/4 v3, 0x0

    .line 1011
    sget-object v0, Lcom/android/phone/CallView$CallViewMode;->NORMAL_MODE:Lcom/android/phone/CallView$CallViewMode;

    invoke-virtual {p0, v0}, Lcom/android/phone/LargeCallView;->setCallViewMode(Lcom/android/phone/CallView$CallViewMode;)V

    .line 1013
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mHeldCallPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1014
    iget-object v4, p0, Lcom/android/phone/LargeCallView;->mWaitingCallPanel:Lcom/android/phone/LargeCallView$WaitingCallPanel;

    iget-boolean v0, p0, Lcom/android/phone/LargeCallView;->mIsTablet:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Lcom/android/phone/LargeCallView$WaitingCallPanel;->setVisibility(I)V

    .line 1016
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mConferenceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1017
    const v0, 0x7f0b00af

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->setEndCallButtonText(I)V

    .line 1018
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, p2}, Lcom/android/phone/SomcInCallButtonPanel;->setIsEmergencyCall(Z)V

    .line 1020
    invoke-direct {p0, v3}, Lcom/android/phone/LargeCallView;->setRedirectingViewsVisibile(Z)V

    .line 1022
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDialerLargeHeaderIcon:Landroid/widget/ImageView;

    const v4, 0x7f02004a

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1023
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDialerLargeHeaderIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1024
    if-eqz p3, :cond_2

    .line 1025
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallTime:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1026
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallTime:Landroid/widget/TextView;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1033
    :goto_1
    if-eqz p1, :cond_4

    .line 1034
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    iget v4, p0, Lcom/android/phone/LargeCallView;->mPhotoAlphaValueHeldCall:I

    invoke-virtual {v0, v4}, Lcom/android/phone/SomcContactPicView;->setAlpha(I)V

    .line 1035
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mNameOrNumberFGCall:Lcom/android/phone/SomcContactTextView;

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->makeTextViewSingleLine(Landroid/widget/TextView;)V

    .line 1036
    invoke-direct {p0, v3}, Lcom/android/phone/LargeCallView;->updateCityIdVisibility(Z)V

    .line 1037
    const v0, 0x7f0b00ad

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->setStateInformationText(I)V

    .line 1038
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallStateInfoLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1048
    :goto_2
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mInformationBox:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1050
    iget-boolean v0, p0, Lcom/android/phone/LargeCallView;->mIsTablet:Z

    if-eqz v0, :cond_6

    .line 1051
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mIncomingCallPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1052
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSomcTabletRightPanel:Lcom/android/phone/SomcTabletRightPanel;

    invoke-virtual {v0, v3}, Lcom/android/phone/SomcTabletRightPanel;->showTabletRightPanelHeaderVisibility(I)V

    .line 1053
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, v2}, Lcom/android/phone/SomcInCallButtonPanel;->setNavigationBarShowMargins(Z)V

    .line 1054
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSomcTabletRightPanel:Lcom/android/phone/SomcTabletRightPanel;

    invoke-virtual {v0, v3}, Lcom/android/phone/SomcTabletRightPanel;->showTabletRightPanelCoverVisibility(Z)V

    .line 1055
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mEndCallButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1056
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSolidShadowPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1061
    :goto_3
    iget-object v4, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    if-eqz p3, :cond_7

    move v0, v2

    :goto_4
    invoke-virtual {v4, p1, v0}, Lcom/android/phone/SomcInCallButtonPanel;->setHeldCallButtonValue(ZZ)V

    .line 1062
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mNameOrNumberFGCall:Lcom/android/phone/SomcContactTextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1063
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->hideCallEndedInteraction()V

    .line 1064
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, v3}, Lcom/android/phone/SomcInCallButtonPanel;->show(Z)V

    .line 1065
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1066
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mIncomingCallView:Lcom/android/phone/SomcIncomingCallView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1068
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->isLargeHeaderLayoutTall()Z

    move-result v0

    .line 1069
    invoke-direct {p0, v3}, Lcom/android/phone/LargeCallView;->setLargeHeaderLayoutTallSize(Z)V

    .line 1073
    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    .line 1074
    invoke-direct {p0, v2}, Lcom/android/phone/LargeCallView;->requestLargeHeaderAnimation(Z)V

    .line 1077
    :cond_0
    if-eqz p3, :cond_8

    .line 1078
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->showCallingProgress()V

    .line 1083
    :goto_5
    invoke-virtual {p0}, Lcom/android/phone/LargeCallView;->hideRejectMsgList()V

    .line 1084
    invoke-direct {p0, v2}, Lcom/android/phone/LargeCallView;->showNavigationBar(Z)V

    .line 1085
    if-eqz p2, :cond_9

    .line 1086
    sget-object v0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;->DISABLED:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;

    invoke-direct {p0, v0, v2}, Lcom/android/phone/LargeCallView;->configureWidgetMode(Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;Z)V

    .line 1094
    :goto_6
    return-void

    .line 1014
    :cond_1
    const/4 v0, 0x4

    goto/16 :goto_0

    .line 1027
    :cond_2
    if-eqz p1, :cond_3

    .line 1028
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 1030
    :cond_3
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallTime:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 1040
    :cond_4
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    iget v4, p0, Lcom/android/phone/LargeCallView;->mPhotoAlphaValueActiveCall:I

    invoke-virtual {v0, v4}, Lcom/android/phone/SomcContactPicView;->setAlpha(I)V

    .line 1041
    iget-boolean v0, p0, Lcom/android/phone/LargeCallView;->mIsTablet:Z

    if-nez v0, :cond_5

    .line 1042
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->setCallerlayoutTallSizeOff()V

    .line 1044
    :cond_5
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->setStateInformationText(Ljava/lang/String;)V

    .line 1045
    invoke-direct {p0, v2}, Lcom/android/phone/LargeCallView;->updateCityIdVisibility(Z)V

    .line 1046
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallStateInfoLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 1058
    :cond_6
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSolidShadowPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_7
    move v0, v3

    .line 1061
    goto :goto_4

    .line 1080
    :cond_8
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->hideCallingProgress()V

    goto :goto_5

    .line 1088
    :cond_9
    if-eqz p3, :cond_a

    .line 1089
    sget-object v0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;->CALLING:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;

    invoke-direct {p0, v0, v3}, Lcom/android/phone/LargeCallView;->configureWidgetMode(Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;Z)V

    goto :goto_6

    .line 1091
    :cond_a
    sget-object v0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;->INCALL:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;

    invoke-direct {p0, v0, v3}, Lcom/android/phone/LargeCallView;->configureWidgetMode(Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;Z)V

    goto :goto_6
.end method

.method public showSipCallingProgress()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1277
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, v4}, Lcom/android/phone/SomcInCallButtonPanel;->setInOutgoingCallState(Z)V

    .line 1278
    const v0, 0x7f0b00b3

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->setStateInformationText(I)V

    .line 1279
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallStateInfoLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1280
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDialerLargeHeaderIcon:Landroid/widget/ImageView;

    const v1, 0x7f02004a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1281
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDialerLargeHeaderIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1282
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1283
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallTime:Landroid/widget/TextView;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1285
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallTime:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1286
    iget-boolean v0, p0, Lcom/android/phone/LargeCallView;->mIsTablet:Z

    if-eqz v0, :cond_1

    .line 1287
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mIncomingCallPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1288
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSomcTabletRightPanel:Lcom/android/phone/SomcTabletRightPanel;

    invoke-virtual {v0, v3}, Lcom/android/phone/SomcTabletRightPanel;->showTabletRightPanelCoverVisibility(Z)V

    .line 1290
    :cond_1
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mInformationBox:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1291
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mIncomingCallView:Lcom/android/phone/SomcIncomingCallView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1292
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->isLargeHeaderLayoutTall()Z

    move-result v0

    .line 1293
    invoke-direct {p0, v3}, Lcom/android/phone/LargeCallView;->setLargeHeaderLayoutTallSize(Z)V

    .line 1294
    if-eqz v0, :cond_2

    .line 1295
    invoke-direct {p0, v4}, Lcom/android/phone/LargeCallView;->requestLargeHeaderAnimation(Z)V

    .line 1297
    :cond_2
    return-void
.end method

.method public showTwoCallsLayout(ZZZ)V
    .locals 7

    .prologue
    const/4 v2, 0x4

    const/4 v6, 0x1

    const/16 v1, 0x8

    const/4 v3, 0x0

    .line 1176
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->hideCallingProgress()V

    .line 1179
    sget-object v0, Lcom/android/phone/CallView$CallViewMode;->NORMAL_MODE:Lcom/android/phone/CallView$CallViewMode;

    invoke-virtual {p0, v0}, Lcom/android/phone/LargeCallView;->setCallViewMode(Lcom/android/phone/CallView$CallViewMode;)V

    .line 1180
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallStateInfoLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1181
    iget-boolean v0, p0, Lcom/android/phone/LargeCallView;->mIsTablet:Z

    if-eqz v0, :cond_1

    .line 1182
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSomcTabletRightPanel:Lcom/android/phone/SomcTabletRightPanel;

    invoke-virtual {v0, v3}, Lcom/android/phone/SomcTabletRightPanel;->showTabletRightPanelHeaderVisibility(I)V

    .line 1183
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, v6}, Lcom/android/phone/SomcInCallButtonPanel;->setNavigationBarShowMargins(Z)V

    .line 1184
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSomcTabletRightPanel:Lcom/android/phone/SomcTabletRightPanel;

    invoke-virtual {v0, v3}, Lcom/android/phone/SomcTabletRightPanel;->showTabletRightPanelCoverVisibility(Z)V

    .line 1185
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mEndCallButton:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1186
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mIncomingCallPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1190
    :goto_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, v3, v6}, Lcom/android/phone/SomcInCallButtonPanel;->setHeldCallButtonValue(ZZ)V

    .line 1191
    invoke-direct {p0, v3}, Lcom/android/phone/LargeCallView;->setLargeHeaderLayoutTallSize(Z)V

    .line 1192
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mNameOrNumberFGCall:Lcom/android/phone/SomcContactTextView;

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->makeTextViewSingleLine(Landroid/widget/TextView;)V

    .line 1193
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    iget v4, p0, Lcom/android/phone/LargeCallView;->mPhotoAlphaValueActiveCall:I

    invoke-virtual {v0, v4}, Lcom/android/phone/SomcContactPicView;->setAlpha(I)V

    .line 1194
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mHeldCallPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1195
    iget-object v4, p0, Lcom/android/phone/LargeCallView;->mWaitingCallPanel:Lcom/android/phone/LargeCallView$WaitingCallPanel;

    iget-boolean v0, p0, Lcom/android/phone/LargeCallView;->mIsTablet:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Lcom/android/phone/LargeCallView$WaitingCallPanel;->setVisibility(I)V

    .line 1196
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDialerLargeHeaderIcon:Landroid/widget/ImageView;

    const v4, 0x7f02004a

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1197
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDialerLargeHeaderIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1198
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallTime:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1199
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mConferenceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1201
    invoke-direct {p0, v3}, Lcom/android/phone/LargeCallView;->setRedirectingViewsVisibile(Z)V

    .line 1202
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->setStateInformationText(Ljava/lang/String;)V

    .line 1203
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mInformationBox:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1205
    if-eqz p2, :cond_3

    .line 1206
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->enableMergeCallsButton()V

    .line 1210
    :goto_2
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, v3}, Lcom/android/phone/SomcInCallButtonPanel;->show(Z)V

    .line 1212
    if-eqz p3, :cond_4

    iget-object v0, p0, Lcom/android/phone/CallView;->mConferenceCallItemList:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 1214
    iput-boolean v3, p0, Lcom/android/phone/LargeCallView;->mCanSeparate:Z

    .line 1217
    new-array v0, v6, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/CallView;->mConferenceCallItemList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 1218
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0b00b0

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    sget-object v5, Lcom/android/phone/LargeCallView;->SRC_TAGS:[Ljava/lang/String;

    invoke-static {v4, v5, v0}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1221
    iget-object v4, p0, Lcom/android/phone/LargeCallView;->mConferenceCallButton:Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1223
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    iget v4, p0, Lcom/android/phone/LargeCallView;->mPhotoAlphaValueActiveCall:I

    invoke-virtual {v0, v4}, Lcom/android/phone/SomcContactPicView;->setAlpha(I)V

    .line 1224
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, v6}, Lcom/android/phone/SomcInCallButtonPanel;->show(Z)V

    .line 1225
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mConferenceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1226
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallTime:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1227
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mNameOrNumberFGCall:Lcom/android/phone/SomcContactTextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1228
    invoke-direct {p0, v3}, Lcom/android/phone/LargeCallView;->updateCityIdVisibility(Z)V

    .line 1230
    const v0, 0x7f0b00b2

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->setEndCallButtonText(I)V

    .line 1232
    invoke-virtual {p0, v2}, Lcom/android/phone/LargeCallView;->setForegroundCallPhoto(I)V

    .line 1240
    :goto_3
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mIncomingCallView:Lcom/android/phone/SomcIncomingCallView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1241
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSolidShadowPanel:Landroid/widget/RelativeLayout;

    iget-boolean v2, p0, Lcom/android/phone/LargeCallView;->mIsTablet:Z

    if-eqz v2, :cond_0

    move v1, v3

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1242
    invoke-virtual {p0}, Lcom/android/phone/LargeCallView;->hideRejectMsgList()V

    .line 1243
    invoke-direct {p0, v6}, Lcom/android/phone/LargeCallView;->showNavigationBar(Z)V

    .line 1244
    sget-object v0, Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;->INCALL:Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;

    invoke-direct {p0, v0, v6}, Lcom/android/phone/LargeCallView;->configureWidgetMode(Lcom/android/phone/widget/SomcCallWidgetMenuFragment$MenuMode;Z)V

    .line 1245
    return-void

    .line 1188
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->setCallerlayoutTallSizeOff()V

    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 1195
    goto/16 :goto_1

    .line 1208
    :cond_3
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->disableMergeCallsButton()V

    goto/16 :goto_2

    .line 1234
    :cond_4
    invoke-direct {p0, v6}, Lcom/android/phone/LargeCallView;->updateCityIdVisibility(Z)V

    .line 1235
    const v0, 0x7f0b00af

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->setEndCallButtonText(I)V

    .line 1236
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1237
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_3
.end method

.method public showWaitingCallLayout(ZZ)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 939
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->hideCallingProgress()V

    .line 940
    invoke-virtual {p0}, Lcom/android/phone/LargeCallView;->closeDtmfDialPad()V

    .line 942
    sget-object v0, Lcom/android/phone/CallView$CallViewMode;->NORMAL_MODE:Lcom/android/phone/CallView$CallViewMode;

    invoke-virtual {p0, v0}, Lcom/android/phone/LargeCallView;->setCallViewMode(Lcom/android/phone/CallView$CallViewMode;)V

    .line 943
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallStateInfoLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 944
    iget-boolean v0, p0, Lcom/android/phone/LargeCallView;->mIsTablet:Z

    if-eqz v0, :cond_0

    .line 945
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSomcTabletRightPanel:Lcom/android/phone/SomcTabletRightPanel;

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcTabletRightPanel;->showTabletRightPanelCoverVisibility(Z)V

    .line 946
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSomcTabletRightPanel:Lcom/android/phone/SomcTabletRightPanel;

    invoke-virtual {v0, v2}, Lcom/android/phone/SomcTabletRightPanel;->showTabletRightPanelHeaderVisibility(I)V

    .line 947
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, v3}, Lcom/android/phone/SomcInCallButtonPanel;->setNavigationBarShowMargins(Z)V

    .line 948
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0}, Lcom/android/phone/SomcInCallButtonPanel;->disableAllButton()V

    .line 949
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mEndCallButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 950
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDialerLargeHeaderIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 951
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mIncomingCallPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 957
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/phone/LargeCallView;->setLargeHeaderLayoutTallSize(Z)V

    .line 958
    const v0, 0x7f0b00ae

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->setStateInformationText(I)V

    .line 959
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mInformationBox:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 960
    invoke-direct {p0, v1}, Lcom/android/phone/LargeCallView;->updateCityIdVisibility(Z)V

    .line 962
    invoke-direct {p0, v1}, Lcom/android/phone/LargeCallView;->setRedirectingViewsVisibile(Z)V

    .line 964
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mNameOrNumberFGCall:Lcom/android/phone/SomcContactTextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 965
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mNameOrNumberFGCall:Lcom/android/phone/SomcContactTextView;

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->makeTextViewSingleLine(Landroid/widget/TextView;)V

    .line 966
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    iget v1, p0, Lcom/android/phone/LargeCallView;->mPhotoAlphaValueActiveCall:I

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcContactPicView;->setAlpha(I)V

    .line 967
    const v0, 0x7f0b00af

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->setEndCallButtonText(I)V

    .line 969
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mHeldCallPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 970
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mWaitingCallPanel:Lcom/android/phone/LargeCallView$WaitingCallPanel;

    invoke-virtual {v0, v3}, Lcom/android/phone/LargeCallView$WaitingCallPanel;->setVisibility(I)V

    .line 972
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallTime:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 973
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mConferenceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 974
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mIncomingCallView:Lcom/android/phone/SomcIncomingCallView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 976
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSolidShadowPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 978
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mWaitingCallPanel:Lcom/android/phone/LargeCallView$WaitingCallPanel;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/LargeCallView$WaitingCallPanel;->showWaitingCall(ZZ)V

    .line 982
    invoke-virtual {p0}, Lcom/android/phone/LargeCallView;->isRejectMsgListOpened()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->showNavigationBar(Z)V

    .line 983
    return-void

    .line 953
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDialerLargeHeaderIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 954
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, v3}, Lcom/android/phone/SomcInCallButtonPanel;->hide(Z)V

    .line 955
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->setCallerlayoutTallSizeOff()V

    goto :goto_0
.end method

.method public showWidget(Landroid/widget/RemoteViews;I)V
    .locals 4

    .prologue
    .line 2547
    invoke-direct {p0, p2}, Lcom/android/phone/LargeCallView;->findWidgetContainerByType(I)Landroid/view/ViewGroup;

    move-result-object v0

    .line 2548
    if-nez v0, :cond_0

    .line 2564
    :goto_0
    return-void

    .line 2551
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2553
    if-eqz p1, :cond_1

    .line 2554
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2556
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2557
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2558
    :catch_0
    move-exception v0

    .line 2559
    const-string v1, "LargeCallView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not apply remote view. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2562
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected startAmPlayingAnimation()V
    .locals 1

    .prologue
    .line 2367
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAmAnimationView:Lcom/android/phone/am/SomcAmAnimationView;

    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmAnimationView;->startPlayingAnimation()V

    .line 2368
    return-void
.end method

.method protected startAmRecordingAnimation()V
    .locals 1

    .prologue
    .line 2411
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAmAnimationView:Lcom/android/phone/am/SomcAmAnimationView;

    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmAnimationView;->startRecordingAnimation()V

    .line 2412
    return-void
.end method

.method protected toggleSpeakerIcon(Z)V
    .locals 3

    .prologue
    .line 2433
    if-eqz p1, :cond_0

    .line 2434
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSpeakerIcon:Landroid/widget/ImageView;

    const v1, 0x7f020017

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2435
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSpeakerIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0172

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2442
    :goto_0
    return-void

    .line 2438
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSpeakerIcon:Landroid/widget/ImageView;

    const v1, 0x7f020015

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2439
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSpeakerIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0171

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateWidgetMenu(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/widget/ISomcCallWidget;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2567
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "updateWidgetMenu"

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->log(Ljava/lang/String;)V

    .line 2568
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mWidgetMenu:Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

    if-eqz v0, :cond_1

    .line 2569
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mWidgetMenu:Lcom/android/phone/widget/SomcCallWidgetMenuFragment;

    invoke-virtual {v0, p1}, Lcom/android/phone/widget/SomcCallWidgetMenuFragment;->refresh(Ljava/util/List;)V

    .line 2571
    :cond_1
    return-void
.end method
