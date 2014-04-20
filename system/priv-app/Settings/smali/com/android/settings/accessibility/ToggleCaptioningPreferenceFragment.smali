.class public Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;
.super Landroid/app/Fragment;
.source "ToggleCaptioningPreferenceFragment.java"


# instance fields
.field private mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

.field private mPreviewText:Lcom/android/internal/widget/SubtitleView;

.field private mPropsFragment:Lcom/android/settings/accessibility/CaptionPropertiesFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;)Lcom/android/settings/accessibility/CaptionPropertiesFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->mPropsFragment:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;)Lcom/android/internal/widget/SubtitleView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->mPreviewText:Lcom/android/internal/widget/SubtitleView;

    return-object v0
.end method

.method public static applyCaptionProperties(Landroid/view/accessibility/CaptioningManager;Lcom/android/internal/widget/SubtitleView;I)V
    .locals 7
    .param p0, "manager"    # Landroid/view/accessibility/CaptioningManager;
    .param p1, "previewText"    # Lcom/android/internal/widget/SubtitleView;
    .param p2, "styleId"    # I

    .prologue
    const v6, 0x7f0b05e6

    .line 103
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/SubtitleView;->setStyle(I)V

    .line 105
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 106
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 107
    .local v1, "cr":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v2

    .line 108
    .local v2, "fontScale":F
    const/high16 v5, 0x42400000

    mul-float/2addr v5, v2

    invoke-virtual {p1, v5}, Lcom/android/internal/widget/SubtitleView;->setTextSize(F)V

    .line 110
    invoke-virtual {p0}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object v3

    .line 111
    .local v3, "locale":Ljava/util/Locale;
    if-eqz v3, :cond_0

    .line 112
    invoke-static {v0, v3, v6}, Lcom/android/settings/accessibility/AccessibilityUtils;->getTextForLocale(Landroid/content/Context;Ljava/util/Locale;I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 114
    .local v4, "localizedText":Ljava/lang/CharSequence;
    invoke-virtual {p1, v4}, Lcom/android/internal/widget/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    .end local v4    # "localizedText":Ljava/lang/CharSequence;
    :goto_0
    return-void

    .line 116
    :cond_0
    invoke-virtual {p1, v6}, Lcom/android/internal/widget/SubtitleView;->setText(I)V

    goto :goto_0
.end method

.method private installActionBarToggleSwitch()V
    .locals 11

    .prologue
    const/16 v10, 0x10

    const/4 v9, -0x2

    const/4 v6, 0x0

    .line 121
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 122
    .local v1, "activity":Landroid/app/Activity;
    new-instance v5, Lcom/android/settings/accessibility/ToggleSwitch;

    invoke-direct {v5, v1}, Lcom/android/settings/accessibility/ToggleSwitch;-><init>(Landroid/content/Context;)V

    .line 124
    .local v5, "toggleSwitch":Lcom/android/settings/accessibility/ToggleSwitch;
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0002

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 126
    .local v3, "padding":I
    invoke-virtual {v5, v6, v6, v3, v6}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 128
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 129
    .local v0, "actionBar":Landroid/app/ActionBar;
    invoke-virtual {v0, v10, v10}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 131
    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const v7, 0x800015

    invoke-direct {v4, v9, v9, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    .line 134
    .local v4, "params":Landroid/app/ActionBar$LayoutParams;
    invoke-virtual {v0, v5, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 136
    iget-object v7, p0, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v7}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v2

    .line 137
    .local v2, "enabled":Z
    iget-object v7, p0, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->mPropsFragment:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-virtual {v7}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 138
    iget-object v7, p0, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->mPreviewText:Lcom/android/internal/widget/SubtitleView;

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 139
    invoke-virtual {v5, v2}, Lcom/android/settings/accessibility/ToggleSwitch;->setCheckedInternal(Z)V

    .line 140
    new-instance v6, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment$1;

    invoke-direct {v6, p0}, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment$1;-><init>(Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;)V

    invoke-virtual {v5, v6}, Lcom/android/settings/accessibility/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/accessibility/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 151
    return-void

    .line 138
    :cond_0
    const/4 v6, 0x4

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "captioning"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    .line 52
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    const v1, 0x7f040014

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 61
    .local v0, "rootView":Landroid/view/View;
    instance-of v1, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz v1, :cond_0

    .line 62
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 65
    :cond_0
    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f080028

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->mPropsFragment:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    .line 74
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->mPropsFragment:Lcom/android/settings/accessibility/CaptionPropertiesFragment;

    invoke-virtual {v0, p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->setParent(Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;)V

    .line 76
    const v0, 0x7f080027

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/SubtitleView;

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->mPreviewText:Lcom/android/internal/widget/SubtitleView;

    .line 78
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->installActionBarToggleSwitch()V

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->refreshPreviewText()V

    .line 80
    return-void
.end method

.method public refreshPreviewText()V
    .locals 8

    .prologue
    const v7, 0x7f0b05e5

    .line 83
    iget-object v4, p0, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->mPreviewText:Lcom/android/internal/widget/SubtitleView;

    .line 84
    .local v4, "preview":Lcom/android/internal/widget/SubtitleView;
    if-eqz v4, :cond_0

    .line 85
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 86
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 87
    .local v1, "cr":Landroid/content/ContentResolver;
    iget-object v6, p0, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v6}, Landroid/view/accessibility/CaptioningManager;->getRawUserStyle()I

    move-result v5

    .line 88
    .local v5, "styleId":I
    iget-object v6, p0, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-static {v6, v4, v5}, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->applyCaptionProperties(Landroid/view/accessibility/CaptioningManager;Lcom/android/internal/widget/SubtitleView;I)V

    .line 90
    iget-object v6, p0, Lcom/android/settings/accessibility/ToggleCaptioningPreferenceFragment;->mCaptioningManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v6}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object v2

    .line 91
    .local v2, "locale":Ljava/util/Locale;
    if-eqz v2, :cond_1

    .line 92
    invoke-static {v0, v2, v7}, Lcom/android/settings/accessibility/AccessibilityUtils;->getTextForLocale(Landroid/content/Context;Ljava/util/Locale;I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 94
    .local v3, "localizedText":Ljava/lang/CharSequence;
    invoke-virtual {v4, v3}, Lcom/android/internal/widget/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "cr":Landroid/content/ContentResolver;
    .end local v2    # "locale":Ljava/util/Locale;
    .end local v3    # "localizedText":Ljava/lang/CharSequence;
    .end local v5    # "styleId":I
    :cond_0
    :goto_0
    return-void

    .line 96
    .restart local v0    # "activity":Landroid/app/Activity;
    .restart local v1    # "cr":Landroid/content/ContentResolver;
    .restart local v2    # "locale":Ljava/util/Locale;
    .restart local v5    # "styleId":I
    :cond_1
    invoke-virtual {v4, v7}, Lcom/android/internal/widget/SubtitleView;->setText(I)V

    goto :goto_0
.end method
