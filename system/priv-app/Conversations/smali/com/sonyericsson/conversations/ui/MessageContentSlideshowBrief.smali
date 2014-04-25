.class public Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief;
.super Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;
.source "MessageContentSlideshowBrief.java"


# instance fields
.field private mReadMoreButton:Landroid/widget/Button;

.field private mThreadId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief;)J
    .locals 2
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief;

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief;->mThreadId:J

    return-wide v0
.end method


# virtual methods
.method protected createSlideshow(Lcom/sonyericsson/conversations/model/MmsMessage;Lcom/sonyericsson/conversations/ui/OnViewProducedListener;)Z
    .locals 7
    .param p1, "mmsMessage"    # Lcom/sonyericsson/conversations/model/MmsMessage;
    .param p2, "onViewProducedListener"    # Lcom/sonyericsson/conversations/ui/OnViewProducedListener;

    .prologue
    const/4 v5, 0x0

    .line 53
    :try_start_0
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/MmsMessage;->getBriefSlideshow()Lcom/android/mms/model/SlideshowModel;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 58
    .local v0, "briefSlideShow":Lcom/android/mms/model/SlideshowModel;
    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 59
    .local v3, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/mms/model/SlideModel;>;"
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/model/SlideModel;

    .line 60
    .local v4, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {p0, v4}, Lcom/sonyericsson/conversations/ui/MessageItemView;->createSlideView(Lcom/android/mms/model/SlideModel;)Landroid/view/View;

    move-result-object v1

    .line 62
    .local v1, "briefSlideView":Landroid/view/View;
    invoke-interface {p2, v1, v4}, Lcom/sonyericsson/conversations/ui/OnViewProducedListener;->onViewProduced(Landroid/view/View;Lcom/android/mms/model/SlideModel;)V

    .line 63
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/MmsMessage;->isDownloaded()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->hasMoreThanOneSlide()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 64
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief;->mReadMoreButton:Landroid/widget/Button;

    if-nez v6, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief;->initReadMoreButton()V

    .line 67
    :cond_0
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief;->mReadMoreButton:Landroid/widget/Button;

    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 70
    :cond_1
    const/4 v5, 0x1

    .end local v0    # "briefSlideShow":Lcom/android/mms/model/SlideshowModel;
    .end local v1    # "briefSlideView":Landroid/view/View;
    .end local v3    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/mms/model/SlideModel;>;"
    .end local v4    # "slide":Lcom/android/mms/model/SlideModel;
    :goto_0
    return v5

    .line 54
    :catch_0
    move-exception v2

    .line 55
    .local v2, "e":Lcom/google/android/mms/MmsException;
    goto :goto_0
.end method

.method getReadButtonForTest()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief;->mReadMoreButton:Landroid/widget/Button;

    return-object v0
.end method

.method public initReadMoreButton()V
    .locals 5

    .prologue
    .line 86
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 87
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 88
    .local v2, "res":Landroid/content/res/Resources;
    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    const v3, 0x7f0a00a8

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief;->mReadMoreButton:Landroid/widget/Button;

    .line 92
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief;->mReadMoreButton:Landroid/widget/Button;

    new-instance v4, Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief$1;

    invoke-direct {v4, p0, v1}, Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief$1;-><init>(Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief;Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    const v0, 0x7f0c0008

    .line 104
    .local v0, "buttonTextColor":I
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageItemView;->mMessage:Lcom/sonyericsson/conversations/model/Message;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/Message;->getDirection()I

    move-result v3

    if-nez v3, :cond_2

    .line 105
    const v0, 0x7f0c000a

    .line 107
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief;->mReadMoreButton:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public setClickable(Z)V
    .locals 1
    .param p1, "clickable"    # Z

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 76
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief;->mReadMoreButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief;->mReadMoreButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 79
    :cond_0
    return-void
.end method

.method public setMessage(Lcom/sonyericsson/conversations/model/Message;J)V
    .locals 0
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;
    .param p2, "threadId"    # J

    .prologue
    .line 44
    invoke-super {p0, p1, p2, p3}, Lcom/sonyericsson/conversations/ui/MessageContentSlideshow;->setMessage(Lcom/sonyericsson/conversations/model/Message;J)V

    .line 45
    iput-wide p2, p0, Lcom/sonyericsson/conversations/ui/MessageContentSlideshowBrief;->mThreadId:J

    .line 46
    return-void
.end method
