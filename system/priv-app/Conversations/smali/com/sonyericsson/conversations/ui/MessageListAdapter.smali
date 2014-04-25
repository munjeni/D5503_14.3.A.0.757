.class public Lcom/sonyericsson/conversations/ui/MessageListAdapter;
.super Lcom/sonyericsson/conversations/ui/util/ExtendedCursorAdapter;
.source "MessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/MessageListAdapter$MarkMessagesAsReadThread;,
        Lcom/sonyericsson/conversations/ui/MessageListAdapter$GetReceiverStringTask;,
        Lcom/sonyericsson/conversations/ui/MessageListAdapter$MessageListItemPopulateListener;
    }
.end annotation


# static fields
.field private static final ITEM_BUBBLE_TYPE_BASE:I = 0x0

.field private static final ITEM_BUBBLE_TYPE_BIG_ATTACHMENTS:I = 0x2

.field private static final ITEM_BUBBLE_TYPE_COUNT:I = 0x4

.field private static final ITEM_BUBBLE_TYPE_DIRECTION_MT:I = 0x1

.field private static final ITEM_BUBBLE_TYPE_MASK:I = 0x3

.field private static final ITEM_CONTENT_TYPE_COUNT:I = 0x3

.field private static final ITEM_CONTENT_TYPE_OFFSET:I

.field private static final ITEM_CONTENT_TYPE_SLIDESHOW:I = 0x1

.field private static final ITEM_CONTENT_TYPE_SLIDESHOW_BRIEF:I = 0x2

.field private static final ITEM_CONTENT_TYPE_TEXT_SIMPLE:I = 0x0

.field private static final ITEM_VIEW_TYPE_COUNT:I = 0xc

.field private static final TAG:Ljava/lang/String; = "MessageListAdapter"


# instance fields
.field private mContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mConversation:Lcom/sonyericsson/conversations/model/Conversation;

.field private mDateFormatter:Lcom/sonyericsson/conversations/ui/util/DateFormatter;

.field private mDateSeparatorStrings:[Ljava/lang/String;

.field private mDateSeparators:Lcom/sonyericsson/conversations/ui/util/DateSeparators;

.field private mHighlightPattern:Ljava/util/regex/Pattern;

.field private mInitialized:Z

.field private mIsInMarkMode:Z

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mListItemPopulateListener:Lcom/sonyericsson/conversations/ui/MessageListAdapter$MessageListItemPopulateListener;

.field private mListener:Lcom/sonyericsson/conversations/ui/MessageListFragment$BubbleClickListener;

.field private mMMSPreviewEnabled:Z

.field private mMessageItemSendAnimator:Landroid/animation/Animator;

.field private mNrOldMessages:I

.field private mProjection:Lcom/sonyericsson/conversations/model/MessageProjection;

.field private mReceiverString:Ljava/lang/String;

.field private mSendAnimator:Landroid/animation/Animator;

.field private mSenderString:Ljava/lang/String;

.field private mSendingMessageKey:J

.field private mShowDateSeparator:Z

.field private mSmallestCorrectDatePosition:I

.field private mUnreadMessages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sonyericsson/conversations/model/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mViewOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 86
    const-wide/high16 v0, 0x4010000000000000L

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    sput v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->ITEM_CONTENT_TYPE_OFFSET:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 151
    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/conversations/ui/util/ExtendedCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 97
    iput v1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mNrOldMessages:I

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mUnreadMessages:Ljava/util/HashMap;

    .line 117
    const-string v0, ""

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mSenderString:Ljava/lang/String;

    .line 119
    const-string v0, ""

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mReceiverString:Ljava/lang/String;

    .line 121
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mInitialized:Z

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mShowDateSeparator:Z

    .line 129
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mIsInMarkMode:Z

    .line 131
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mSendingMessageKey:J

    .line 135
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mListItemPopulateListener:Lcom/sonyericsson/conversations/ui/MessageListAdapter$MessageListItemPopulateListener;

    .line 803
    new-instance v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/MessageListAdapter$1;-><init>(Lcom/sonyericsson/conversations/ui/MessageListAdapter;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mViewOnClickListener:Landroid/view/View$OnClickListener;

    .line 152
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 161
    invoke-direct {p0, p1, v2, p2}, Lcom/sonyericsson/conversations/ui/util/ExtendedCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 97
    iput v1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mNrOldMessages:I

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mUnreadMessages:Ljava/util/HashMap;

    .line 117
    const-string v0, ""

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mSenderString:Ljava/lang/String;

    .line 119
    const-string v0, ""

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mReceiverString:Ljava/lang/String;

    .line 121
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mInitialized:Z

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mShowDateSeparator:Z

    .line 129
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mIsInMarkMode:Z

    .line 131
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mSendingMessageKey:J

    .line 135
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mListItemPopulateListener:Lcom/sonyericsson/conversations/ui/MessageListAdapter$MessageListItemPopulateListener;

    .line 803
    new-instance v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/MessageListAdapter$1;-><init>(Lcom/sonyericsson/conversations/ui/MessageListAdapter;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mViewOnClickListener:Landroid/view/View$OnClickListener;

    .line 162
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "autoRequery"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 156
    invoke-direct {p0, p1, v2, p2}, Lcom/sonyericsson/conversations/ui/util/ExtendedCursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 97
    iput v1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mNrOldMessages:I

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mUnreadMessages:Ljava/util/HashMap;

    .line 117
    const-string v0, ""

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mSenderString:Ljava/lang/String;

    .line 119
    const-string v0, ""

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mReceiverString:Ljava/lang/String;

    .line 121
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mInitialized:Z

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mShowDateSeparator:Z

    .line 129
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mIsInMarkMode:Z

    .line 131
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mSendingMessageKey:J

    .line 135
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mListItemPopulateListener:Lcom/sonyericsson/conversations/ui/MessageListAdapter$MessageListItemPopulateListener;

    .line 803
    new-instance v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/MessageListAdapter$1;-><init>(Lcom/sonyericsson/conversations/ui/MessageListAdapter;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mViewOnClickListener:Landroid/view/View$OnClickListener;

    .line 157
    return-void
.end method

.method static synthetic access$002(Lcom/sonyericsson/conversations/ui/MessageListAdapter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/MessageListAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mReceiverString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sonyericsson/conversations/ui/MessageListAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/ExtendedCursorAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/conversations/ui/MessageListAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/ExtendedCursorAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/conversations/ui/MessageListAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/ExtendedCursorAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/conversations/ui/MessageListAdapter;)Lcom/sonyericsson/conversations/model/Conversation;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mConversation:Lcom/sonyericsson/conversations/model/Conversation;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/conversations/ui/MessageListAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/ExtendedCursorAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonyericsson/conversations/ui/MessageListAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/ExtendedCursorAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonyericsson/conversations/ui/MessageListAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/util/ExtendedCursorAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonyericsson/conversations/ui/MessageListAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mIsInMarkMode:Z

    return v0
.end method

.method static synthetic access$900(Lcom/sonyericsson/conversations/ui/MessageListAdapter;)Lcom/sonyericsson/conversations/ui/MessageListFragment$BubbleClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mListener:Lcom/sonyericsson/conversations/ui/MessageListFragment$BubbleClickListener;

    return-object v0
.end method

.method private getCurrentMessage()Lcom/sonyericsson/conversations/model/Message;
    .locals 6

    .prologue
    .line 376
    invoke-static {}, Lcom/sonyericsson/conversations/model/ModelCache;->getInstance()Lcom/sonyericsson/conversations/model/ModelCache;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/ExtendedCursorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mProjection:Lcom/sonyericsson/conversations/model/MessageProjection;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mConversation:Lcom/sonyericsson/conversations/model/Conversation;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/model/Conversation;->getThreadId()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/conversations/model/ModelCache;->getMessage(Landroid/content/Context;Landroid/database/Cursor;Lcom/sonyericsson/conversations/model/MessageProjection;J)Lcom/sonyericsson/conversations/model/Message;

    move-result-object v0

    return-object v0
.end method

.method private getDateSeparatorText(JJ)Ljava/lang/String;
    .locals 3
    .param p1, "date"    # J
    .param p3, "previousDate"    # J

    .prologue
    .line 257
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mDateSeparators:Lcom/sonyericsson/conversations/ui/util/DateSeparators;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/sonyericsson/conversations/ui/util/DateSeparators;->getSeparator(JJ)I

    move-result v1

    .line 260
    .local v1, "separator":I
    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mDateSeparatorStrings:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 261
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mDateSeparatorStrings:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 265
    .local v0, "dateSeparatorText":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 263
    .end local v0    # "dateSeparatorText":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "dateSeparatorText":Ljava/lang/String;
    goto :goto_0
.end method

.method private getItemViewType()I
    .locals 5

    .prologue
    .line 485
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->getCurrentMessage()Lcom/sonyericsson/conversations/model/Message;

    move-result-object v2

    .line 486
    .local v2, "message":Lcom/sonyericsson/conversations/model/Message;
    const/4 v0, 0x0

    .line 487
    .local v0, "bubbleFlags":I
    const/4 v1, 0x0

    .line 488
    .local v1, "contentType":I
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/Message;->getDirection()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 489
    or-int/lit8 v0, v0, 0x1

    .line 491
    :cond_0
    instance-of v3, v2, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-eqz v3, :cond_2

    move-object v3, v2

    check-cast v3, Lcom/sonyericsson/conversations/model/MmsMessage;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/MmsMessage;->isDownloaded()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v2

    .line 492
    check-cast v3, Lcom/sonyericsson/conversations/model/MmsMessage;

    invoke-direct {p0, v3}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->hasVisualContent(Lcom/sonyericsson/conversations/model/MmsMessage;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 493
    or-int/lit8 v0, v0, 0x2

    .line 495
    :cond_1
    iget-boolean v3, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mMMSPreviewEnabled:Z

    if-eqz v3, :cond_3

    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->hasMoreThanOneSlide(Lcom/sonyericsson/conversations/model/Message;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 496
    const/4 v1, 0x2

    .line 501
    :cond_2
    :goto_0
    sget v3, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->ITEM_CONTENT_TYPE_OFFSET:I

    shl-int v3, v1, v3

    or-int/2addr v3, v0

    return v3

    .line 498
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getPreviousDate(Landroid/database/Cursor;)J
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 277
    invoke-interface {p1}, Landroid/database/Cursor;->isFirst()Z

    move-result v2

    if-nez v2, :cond_0

    .line 278
    invoke-interface {p1}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 279
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mProjection:Lcom/sonyericsson/conversations/model/MessageProjection;

    iget v2, v2, Lcom/sonyericsson/conversations/model/MessageProjection;->mColumnNormalizedDate:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 280
    .local v0, "previousDate":J
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 284
    :goto_0
    return-wide v0

    .line 282
    .end local v0    # "previousDate":J
    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    .restart local v0    # "previousDate":J
    goto :goto_0
.end method

.method private handleUnreadMessage(Lcom/sonyericsson/conversations/model/Message;I)V
    .locals 2
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;
    .param p2, "position"    # I

    .prologue
    .line 288
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/Message;->getDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/Message;->isRead()Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mUnreadMessages:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    :cond_0
    return-void
.end method

.method private hasMoreThanOneSlide(Lcom/sonyericsson/conversations/model/Message;)Z
    .locals 5
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;

    .prologue
    const/4 v3, 0x0

    .line 453
    instance-of v4, p1, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-nez v4, :cond_1

    .line 465
    :cond_0
    :goto_0
    return v3

    :cond_1
    move-object v1, p1

    .line 456
    check-cast v1, Lcom/sonyericsson/conversations/model/MmsMessage;

    .line 457
    .local v1, "mmsMessage":Lcom/sonyericsson/conversations/model/MmsMessage;
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/MmsMessage;->isDownloaded()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 459
    :try_start_0
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/MmsMessage;->getBriefSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v2

    .line 460
    .local v2, "slideShow":Lcom/android/mms/model/SlideshowModel;
    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->hasMoreThanOneSlide()Z
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 461
    .end local v2    # "slideShow":Lcom/android/mms/model/SlideshowModel;
    :catch_0
    move-exception v0

    .line 462
    .local v0, "e":Lcom/google/android/mms/MmsException;
    goto :goto_0
.end method

.method private hasVisualContent(Lcom/sonyericsson/conversations/model/MmsMessage;)Z
    .locals 6
    .param p1, "mms"    # Lcom/sonyericsson/conversations/model/MmsMessage;

    .prologue
    const/4 v4, 0x0

    .line 471
    :try_start_0
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 476
    .local v3, "slideshow":Lcom/android/mms/model/SlideshowModel;
    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/SlideModel;

    .line 477
    .local v2, "slide":Lcom/android/mms/model/SlideModel;
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 478
    :cond_1
    const/4 v4, 0x1

    .line 481
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "slide":Lcom/android/mms/model/SlideModel;
    .end local v3    # "slideshow":Lcom/android/mms/model/SlideshowModel;
    :cond_2
    :goto_0
    return v4

    .line 472
    :catch_0
    move-exception v0

    .line 474
    .local v0, "e":Lcom/google/android/mms/MmsException;
    goto :goto_0
.end method

.method private initMessageProjection(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 730
    new-instance v0, Lcom/sonyericsson/conversations/model/MessageProjection;

    const/4 v1, 0x3

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/conversations/model/MessageProjection;-><init>(Landroid/database/Cursor;I)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mProjection:Lcom/sonyericsson/conversations/model/MessageProjection;

    .line 731
    return-void
.end method

.method private updateDateSeparator(Lcom/sonyericsson/conversations/ui/MessageItemLayout;Lcom/sonyericsson/conversations/model/Message;Landroid/database/Cursor;I)V
    .locals 10
    .param p1, "itemLayout"    # Lcom/sonyericsson/conversations/ui/MessageItemLayout;
    .param p2, "message"    # Lcom/sonyericsson/conversations/model/Message;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "position"    # I

    .prologue
    const/4 v5, 0x0

    .line 232
    invoke-direct {p0, p3}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->getPreviousDate(Landroid/database/Cursor;)J

    move-result-wide v3

    .line 235
    .local v3, "previousDate":J
    iget-wide v6, p2, Lcom/sonyericsson/conversations/model/Message;->date:J

    cmp-long v6, v6, v3

    if-gez v6, :cond_0

    iget-boolean v6, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mShowDateSeparator:Z

    if-eqz v6, :cond_0

    .line 236
    iput-boolean v5, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mShowDateSeparator:Z

    .line 238
    iget v6, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mSmallestCorrectDatePosition:I

    if-ge v6, p4, :cond_0

    .line 239
    iput p4, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mSmallestCorrectDatePosition:I

    .line 242
    :cond_0
    iget-wide v6, p2, Lcom/sonyericsson/conversations/model/Message;->date:J

    invoke-direct {p0, v6, v7, v3, v4}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->getDateSeparatorText(JJ)Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, "dateSeparatorText":Ljava/lang/String;
    invoke-static {}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->getInstance()Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;

    move-result-object v6

    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/util/ExtendedCursorAdapter;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mConversation:Lcom/sonyericsson/conversations/model/Conversation;

    invoke-virtual {v8}, Lcom/sonyericsson/conversations/model/Conversation;->getThreadId()J

    move-result-wide v8

    invoke-virtual {v6, v7, v8, v9}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->hasWallpaper(Landroid/content/Context;J)Z

    move-result v2

    .line 246
    .local v2, "hasWallpaper":Z
    if-eqz v2, :cond_2

    .line 247
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/util/ExtendedCursorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c000c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 252
    .local v0, "accentColor":I
    :goto_0
    iget v6, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mSmallestCorrectDatePosition:I

    if-le p4, v6, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v5, 0x1

    .line 253
    .local v5, "showDateSeparator":Z
    :cond_1
    invoke-virtual {p1, v1, v0, v5}, Lcom/sonyericsson/conversations/ui/MessageItemLayout;->updateDateSeparator(Ljava/lang/CharSequence;IZ)V

    .line 254
    return-void

    .line 250
    .end local v0    # "accentColor":I
    .end local v5    # "showDateSeparator":Z
    :cond_2
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->getAccentColor()I

    move-result v0

    .restart local v0    # "accentColor":I
    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v10, 0x1

    .line 301
    instance-of v6, p1, Lcom/sonyericsson/conversations/ui/MessageItemLayout;

    if-eqz v6, :cond_0

    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 369
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v1, p1

    .line 306
    check-cast v1, Lcom/sonyericsson/conversations/ui/MessageItemLayout;

    .line 307
    .local v1, "itemLayout":Lcom/sonyericsson/conversations/ui/MessageItemLayout;
    const v6, 0x7f0a00ac

    invoke-virtual {v1, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    .line 308
    .local v0, "bubble":Lcom/sonyericsson/conversations/ui/MessageBubbleView;
    if-eqz v0, :cond_0

    .line 311
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    .line 312
    .local v4, "position":I
    invoke-virtual {v1, v4}, Lcom/sonyericsson/conversations/ui/MessageItemLayout;->setPosition(I)V

    .line 316
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->getCurrentMessage()Lcom/sonyericsson/conversations/model/Message;

    move-result-object v2

    .line 317
    .local v2, "message":Lcom/sonyericsson/conversations/model/Message;
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mProjection:Lcom/sonyericsson/conversations/model/MessageProjection;

    iget v6, v6, Lcom/sonyericsson/conversations/model/MessageProjection;->mColumnStarStatus:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 318
    .local v5, "starStatus":I
    invoke-virtual {v2, v5}, Lcom/sonyericsson/conversations/model/Message;->setStarStatus(I)V

    .line 321
    invoke-direct {p0, v1, v2, p3, v4}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->updateDateSeparator(Lcom/sonyericsson/conversations/ui/MessageItemLayout;Lcom/sonyericsson/conversations/model/Message;Landroid/database/Cursor;I)V

    .line 324
    iget-boolean v6, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mIsInMarkMode:Z

    invoke-virtual {v1, v6}, Lcom/sonyericsson/conversations/ui/MessageItemLayout;->setMarkMode(Z)V

    .line 325
    iget-boolean v6, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mIsInMarkMode:Z

    if-eqz v6, :cond_5

    .line 326
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mViewOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    :goto_1
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mSenderString:Ljava/lang/String;

    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mReceiverString:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->setParticipantStrings(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mDateFormatter:Lcom/sonyericsson/conversations/ui/util/DateFormatter;

    invoke-virtual {v0, v6}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->setDateFormatter(Lcom/sonyericsson/conversations/ui/util/DateFormatter;)V

    .line 335
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mHighlightPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v6}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->setHighlightPattern(Ljava/util/regex/Pattern;)V

    .line 336
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mConversation:Lcom/sonyericsson/conversations/model/Conversation;

    invoke-virtual {v6}, Lcom/sonyericsson/conversations/model/Conversation;->getThreadId()J

    move-result-wide v6

    invoke-virtual {v0, v2, v6, v7}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->setMessage(Lcom/sonyericsson/conversations/model/Message;J)V

    .line 339
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mSendAnimator:Landroid/animation/Animator;

    if-eqz v6, :cond_2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/Message;->getKey()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mSendingMessageKey:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 340
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mSendingMessageKey:J

    .line 343
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mMessageItemSendAnimator:Landroid/animation/Animator;

    invoke-virtual {v6, v0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 344
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mSendAnimator:Landroid/animation/Animator;

    invoke-virtual {v6}, Landroid/animation/Animator;->start()V

    .line 348
    :cond_2
    invoke-direct {p0, v2, v4}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->handleUnreadMessage(Lcom/sonyericsson/conversations/model/Message;I)V

    .line 352
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    if-eqz v6, :cond_3

    .line 353
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 357
    :cond_3
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mListItemPopulateListener:Lcom/sonyericsson/conversations/ui/MessageListAdapter$MessageListItemPopulateListener;

    if-eqz v6, :cond_4

    .line 358
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mListItemPopulateListener:Lcom/sonyericsson/conversations/ui/MessageListAdapter$MessageListItemPopulateListener;

    invoke-interface {v6, v4}, Lcom/sonyericsson/conversations/ui/MessageListAdapter$MessageListItemPopulateListener;->onMessageListItemPopulated(I)V

    .line 362
    :cond_4
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/Message;->getDirection()I

    move-result v6

    if-ne v6, v10, :cond_6

    .line 363
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mConversation:Lcom/sonyericsson/conversations/model/Conversation;

    invoke-virtual {v6}, Lcom/sonyericsson/conversations/model/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->setContactBadge(Ljava/util/List;)V

    goto/16 :goto_0

    .line 328
    :cond_5
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 365
    :cond_6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 366
    .local v3, "myselfList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/conversations/model/Participant;>;"
    invoke-static {}, Lcom/sonyericsson/conversations/model/Participant;->getMySelfParticipant()Lcom/sonyericsson/conversations/model/Participant;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    invoke-virtual {v0, v3}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->setContactBadge(Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method public cancelSendAnimationsInProgress()V
    .locals 1

    .prologue
    .line 824
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mSendAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mSendAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 825
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mSendAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 828
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mMessageItemSendAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mMessageItemSendAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 829
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mMessageItemSendAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 831
    :cond_1
    return-void
.end method

.method public checkAnyMessageStarred(Landroid/util/SparseBooleanArray;)Z
    .locals 4
    .param p1, "checkedItemPositions"    # Landroid/util/SparseBooleanArray;

    .prologue
    const/4 v2, 0x1

    .line 776
    if-eqz p1, :cond_1

    .line 777
    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 778
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 779
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 780
    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 781
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mProjection:Lcom/sonyericsson/conversations/model/MessageProjection;

    iget v3, v3, Lcom/sonyericsson/conversations/model/MessageProjection;->mColumnStarStatus:I

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 788
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "i":I
    :goto_1
    return v2

    .line 779
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 788
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "i":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public clearHighPattern()V
    .locals 1

    .prologue
    .line 772
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mHighlightPattern:Ljava/util/regex/Pattern;

    .line 773
    return-void
.end method

.method public getFirstUnreadMessageIndex()I
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 386
    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .line 388
    .local v1, "firstUnreadMessage":I
    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 389
    .local v0, "c":Landroid/database/Cursor;
    if-nez v0, :cond_1

    .line 422
    :cond_0
    :goto_0
    return v4

    .line 393
    :cond_1
    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v5

    add-int/lit8 v3, v5, -0x2

    .local v3, "position":I
    :goto_1
    if-ltz v3, :cond_0

    .line 394
    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 395
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->getCurrentMessage()Lcom/sonyericsson/conversations/model/Message;

    move-result-object v2

    .line 410
    .local v2, "message":Lcom/sonyericsson/conversations/model/Message;
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/Message;->isRead()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/Message;->getDirection()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 412
    move v1, v3

    .line 393
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
    move v4, v1

    .line 417
    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 6
    .param p1, "position"    # I

    .prologue
    const-wide/16 v1, 0x0

    .line 744
    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 745
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 746
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mProjection:Lcom/sonyericsson/conversations/model/MessageProjection;

    if-nez v4, :cond_0

    .line 747
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->initMessageProjection(Landroid/database/Cursor;)V

    .line 749
    :cond_0
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 750
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mProjection:Lcom/sonyericsson/conversations/model/MessageProjection;

    iget v4, v4, Lcom/sonyericsson/conversations/model/MessageProjection;->mColumnMsgType:I

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 752
    .local v3, "type":Ljava/lang/String;
    const-string v4, "mms"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 753
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mProjection:Lcom/sonyericsson/conversations/model/MessageProjection;

    iget v4, v4, Lcom/sonyericsson/conversations/model/MessageProjection;->mColumnMsgId:I

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    sub-long/2addr v1, v4

    .line 762
    .end local v3    # "type":Ljava/lang/String;
    :cond_1
    :goto_0
    return-wide v1

    .line 755
    .restart local v3    # "type":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mProjection:Lcom/sonyericsson/conversations/model/MessageProjection;

    iget v4, v4, Lcom/sonyericsson/conversations/model/MessageProjection;->mColumnMsgId:I

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .local v1, "id":J
    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 506
    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 507
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 508
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t move cursor to position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 511
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->getItemViewType()I

    move-result v1

    return v1
.end method

.method public getMessageIndexFromUri(Landroid/net/Uri;)I
    .locals 9
    .param p1, "messageUri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, -0x1

    .line 426
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/util/ExtendedCursorAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5, p1}, Lcom/sonyericsson/conversations/model/Message;->fromUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/sonyericsson/conversations/model/Message;

    move-result-object v3

    .line 428
    .local v3, "target":Lcom/sonyericsson/conversations/model/Message;
    if-nez v3, :cond_1

    move v2, v4

    .line 449
    :cond_0
    :goto_0
    return v2

    .line 433
    :cond_1
    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 434
    .local v0, "c":Landroid/database/Cursor;
    if-nez v0, :cond_2

    move v2, v4

    .line 436
    goto :goto_0

    .line 439
    :cond_2
    const/4 v2, 0x0

    .local v2, "position":I
    :goto_1
    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 440
    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 441
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->getCurrentMessage()Lcom/sonyericsson/conversations/model/Message;

    move-result-object v1

    .line 443
    .local v1, "current":Lcom/sonyericsson/conversations/model/Message;
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Message;->getKey()J

    move-result-wide v5

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/Message;->getKey()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    .line 439
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1    # "current":Lcom/sonyericsson/conversations/model/Message;
    :cond_3
    move v2, v4

    .line 449
    goto :goto_0
.end method

.method public getMessageItemSendAnimator()Landroid/animation/Animator;
    .locals 2

    .prologue
    .line 836
    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    .line 837
    .local v0, "messageItemSendAnimator":Landroid/animation/ObjectAnimator;
    sget-object v1, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->RELATIVE_HEIGHT:Landroid/util/Property;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setProperty(Landroid/util/Property;)V

    .line 838
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 840
    return-object v0

    .line 838
    :array_0
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 516
    const/16 v0, 0xc

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 768
    const/4 v0, 0x1

    return v0
.end method

.method public init(Lcom/sonyericsson/conversations/model/Conversation;)V
    .locals 6
    .param p1, "conversation"    # Lcom/sonyericsson/conversations/model/Conversation;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 171
    invoke-static {}, Lcom/android/mms/MmsConfig;->isMMSPreviewEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mMMSPreviewEnabled:Z

    .line 173
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mConversation:Lcom/sonyericsson/conversations/model/Conversation;

    .line 175
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/ExtendedCursorAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 177
    new-instance v1, Lcom/sonyericsson/conversations/ui/util/DateSeparators;

    invoke-direct {v1}, Lcom/sonyericsson/conversations/ui/util/DateSeparators;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mDateSeparators:Lcom/sonyericsson/conversations/ui/util/DateSeparators;

    .line 178
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/ExtendedCursorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f0b0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mDateSeparatorStrings:[Ljava/lang/String;

    .line 180
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/util/ExtendedCursorAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/util/DateFormatter;->getFormatter(Landroid/content/Context;)Lcom/sonyericsson/conversations/ui/util/DateFormatter;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mDateFormatter:Lcom/sonyericsson/conversations/ui/util/DateFormatter;

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/util/ExtendedCursorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700ee

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mSenderString:Ljava/lang/String;

    .line 187
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mConversation:Lcom/sonyericsson/conversations/model/Conversation;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mConversation:Lcom/sonyericsson/conversations/model/Conversation;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 188
    new-instance v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter$GetReceiverStringTask;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mConversation:Lcom/sonyericsson/conversations/model/Conversation;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/model/Participant;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/conversations/ui/MessageListAdapter$GetReceiverStringTask;-><init>(Lcom/sonyericsson/conversations/ui/MessageListAdapter;Lcom/sonyericsson/conversations/model/Participant;)V

    .line 190
    .local v0, "getReceiverStringTask":Lcom/sonyericsson/conversations/ui/MessageListAdapter$GetReceiverStringTask;
    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 196
    .end local v0    # "getReceiverStringTask":Lcom/sonyericsson/conversations/ui/MessageListAdapter$GetReceiverStringTask;
    :goto_0
    iput-boolean v5, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mInitialized:Z

    .line 197
    return-void

    .line 193
    :cond_0
    const-string v1, ""

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mReceiverString:Ljava/lang/String;

    goto :goto_0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 709
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mInitialized:Z

    return v0
.end method

.method public isStarredItem(I)Z
    .locals 3
    .param p1, "pos"    # I

    .prologue
    const/4 v1, 0x1

    .line 792
    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 793
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 794
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 795
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mProjection:Lcom/sonyericsson/conversations/model/MessageProjection;

    iget v2, v2, Lcom/sonyericsson/conversations/model/MessageProjection;->mColumnStarStatus:I

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 800
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public markMessagesAsRead(II)V
    .locals 5
    .param p1, "firstPosition"    # I
    .param p2, "lastPosition"    # I

    .prologue
    .line 584
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mUnreadMessages:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 591
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 595
    .local v1, "messagesToMarkAsRead":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/conversations/model/Message;>;"
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mUnreadMessages:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 596
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 598
    .local v2, "pos":I
    if-lt v2, p1, :cond_0

    if-gt v2, p2, :cond_0

    .line 600
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mUnreadMessages:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 601
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 605
    .end local v2    # "pos":I
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 606
    new-instance v3, Lcom/sonyericsson/conversations/ui/MessageListAdapter$MarkMessagesAsReadThread;

    invoke-direct {v3, p0, v1}, Lcom/sonyericsson/conversations/ui/MessageListAdapter$MarkMessagesAsReadThread;-><init>(Lcom/sonyericsson/conversations/ui/MessageListAdapter;Ljava/util/ArrayList;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 609
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v1    # "messagesToMarkAsRead":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/conversations/model/Message;>;"
    :cond_2
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 521
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->getItemViewType()I

    move-result v3

    .line 525
    .local v3, "itemViewType":I
    and-int/lit8 v6, v3, 0x3

    packed-switch v6, :pswitch_data_0

    .line 539
    const v4, 0x7f03002e

    .line 540
    .local v4, "layoutId":I
    const-string v6, "MessageListAdapter"

    const-string v7, "Unknown view item, assigning layout to somc_message_bubble_sent"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :goto_0
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f030033

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 544
    .local v5, "listItem":Landroid/view/View;
    const v6, 0x7f0a00ab

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 545
    .local v1, "bubbleStub":Landroid/view/ViewStub;
    invoke-virtual {v1, v4}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 546
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    .line 549
    .local v0, "bubble":Lcom/sonyericsson/conversations/ui/MessageBubbleView;
    sget v6, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->ITEM_CONTENT_TYPE_OFFSET:I

    shr-int v6, v3, v6

    packed-switch v6, :pswitch_data_1

    .line 560
    const v4, 0x7f030032

    .line 561
    const-string v6, "MessageListAdapter"

    const-string v7, "Unknown view item, assigning content to somc_message_content_text"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :goto_1
    const v6, 0x7f0a00a0

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    .line 565
    .local v2, "contentStub":Landroid/view/ViewStub;
    invoke-virtual {v2, v4}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 566
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->setBubbleContent(Landroid/view/View;)V

    .line 567
    const v6, 0x7f0a00ac

    invoke-virtual {v5, v6, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 568
    return-object v5

    .line 527
    .end local v0    # "bubble":Lcom/sonyericsson/conversations/ui/MessageBubbleView;
    .end local v1    # "bubbleStub":Landroid/view/ViewStub;
    .end local v2    # "contentStub":Landroid/view/ViewStub;
    .end local v4    # "layoutId":I
    .end local v5    # "listItem":Landroid/view/View;
    :pswitch_0
    const v4, 0x7f03002c

    .line 528
    .restart local v4    # "layoutId":I
    goto :goto_0

    .line 530
    .end local v4    # "layoutId":I
    :pswitch_1
    const v4, 0x7f03002e

    .line 531
    .restart local v4    # "layoutId":I
    goto :goto_0

    .line 533
    .end local v4    # "layoutId":I
    :pswitch_2
    const v4, 0x7f03002d

    .line 534
    .restart local v4    # "layoutId":I
    goto :goto_0

    .line 536
    .end local v4    # "layoutId":I
    :pswitch_3
    const v4, 0x7f03002f

    .line 537
    .restart local v4    # "layoutId":I
    goto :goto_0

    .line 551
    .restart local v0    # "bubble":Lcom/sonyericsson/conversations/ui/MessageBubbleView;
    .restart local v1    # "bubbleStub":Landroid/view/ViewStub;
    .restart local v5    # "listItem":Landroid/view/View;
    :pswitch_4
    const v4, 0x7f030032

    .line 552
    goto :goto_1

    .line 554
    :pswitch_5
    const v4, 0x7f030030

    .line 555
    goto :goto_1

    .line 557
    :pswitch_6
    const v4, 0x7f030031

    .line 558
    goto :goto_1

    .line 525
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch

    .line 549
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public setContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V
    .locals 0
    .param p1, "contextMenuListener"    # Landroid/view/View$OnCreateContextMenuListener;

    .prologue
    .line 572
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 573
    return-void
.end method

.method public setHighlightPattern(Ljava/util/regex/Pattern;)V
    .locals 0
    .param p1, "highlightPattern"    # Ljava/util/regex/Pattern;

    .prologue
    .line 705
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mHighlightPattern:Ljava/util/regex/Pattern;

    .line 706
    return-void
.end method

.method public setListItemPopulateListener(Lcom/sonyericsson/conversations/ui/MessageListAdapter$MessageListItemPopulateListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/conversations/ui/MessageListAdapter$MessageListItemPopulateListener;

    .prologue
    .line 580
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mListItemPopulateListener:Lcom/sonyericsson/conversations/ui/MessageListAdapter$MessageListItemPopulateListener;

    .line 581
    return-void
.end method

.method public setMarkedListener(Lcom/sonyericsson/conversations/ui/MessageListFragment$BubbleClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/conversations/ui/MessageListFragment$BubbleClickListener;

    .prologue
    .line 576
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mListener:Lcom/sonyericsson/conversations/ui/MessageListFragment$BubbleClickListener;

    .line 577
    return-void
.end method

.method public setMessageListMarkableMode(Z)V
    .locals 0
    .param p1, "isInMarkMode"    # Z

    .prologue
    .line 739
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mIsInMarkMode:Z

    .line 740
    return-void
.end method

.method public setSendAnimator(Landroid/animation/Animator;Landroid/animation/Animator;)V
    .locals 0
    .param p1, "sendAnimator"    # Landroid/animation/Animator;
    .param p2, "messageItemAnimator"    # Landroid/animation/Animator;

    .prologue
    .line 816
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mSendAnimator:Landroid/animation/Animator;

    .line 817
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mMessageItemSendAnimator:Landroid/animation/Animator;

    .line 818
    return-void
.end method

.method public setSendingMessageKey(J)V
    .locals 0
    .param p1, "key"    # J

    .prologue
    .line 372
    iput-wide p1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mSendingMessageKey:J

    .line 373
    return-void
.end method

.method public setShowDateSeparator(Z)V
    .locals 0
    .param p1, "showDateSeparator"    # Z

    .prologue
    .line 713
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mShowDateSeparator:Z

    .line 714
    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 3
    .param p1, "newCursor"    # Landroid/database/Cursor;

    .prologue
    .line 718
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v1

    .line 719
    .local v1, "oldCursor":Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 720
    .local v0, "newAdapterCursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 721
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->initMessageProjection(Landroid/database/Cursor;)V

    .line 722
    if-eqz v1, :cond_0

    .line 723
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->mNrOldMessages:I

    .line 726
    :cond_0
    return-object v1
.end method
