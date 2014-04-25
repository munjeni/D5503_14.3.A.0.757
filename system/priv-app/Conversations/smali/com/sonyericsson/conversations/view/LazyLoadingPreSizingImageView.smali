.class public Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;
.super Landroid/widget/ImageView;
.source "LazyLoadingPreSizingImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView$Cancellable;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I = 0x2

.field private static final DEFAULT_SIZE:Lcom/sonyericsson/conversations/model/Dimension;

.field private static final KEEP_ALIVE_MINUTES:I = 0x1

.field private static final MAX_POOL_SIZE:I = 0xa

.field private static final MINIMUM_IMAGE_WIDTH_RATIO:F = 0.7f

.field private static final QUEUE_SIZE:I = 0xa

.field private static sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field private mActionBarHeight:I

.field private mActivity:Landroid/app/Activity;

.field private mBitmapSize:Landroid/graphics/Rect;

.field private mBubbleBorderRadius:I

.field private mBubbleBorderSize:I

.field private mBubbleFreeWidth:I

.field private mClipPath:Landroid/graphics/Path;

.field private mContext:Landroid/content/Context;

.field private mConversationListWeight:I

.field private mCurrentTask:Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView$Cancellable;

.field private mInsideBubble:Landroid/graphics/RectF;

.field private mMargin:I

.field private mMessageListWeight:I

.field private mNegativeMargin:I

.field private mNotFoundDrawableId:I

.field private mOldOrientation:I

.field private mOverflowPercentage:D

.field private mPaint:Landroid/graphics/Paint;

.field private mSize:Lcom/sonyericsson/conversations/model/Dimension;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v2, 0xa

    const/4 v1, 0x0

    .line 44
    new-instance v0, Lcom/sonyericsson/conversations/model/Dimension;

    invoke-direct {v0, v1, v1}, Lcom/sonyericsson/conversations/model/Dimension;-><init>(II)V

    sput-object v0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->DEFAULT_SIZE:Lcom/sonyericsson/conversations/model/Dimension;

    .line 57
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x2

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6, v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 64
    sget-object v0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->DEFAULT_SIZE:Lcom/sonyericsson/conversations/model/Dimension;

    iput-object v0, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mSize:Lcom/sonyericsson/conversations/model/Dimension;

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mCurrentTask:Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView$Cancellable;

    .line 67
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mPaint:Landroid/graphics/Paint;

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mOldOrientation:I

    .line 88
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->init(Landroid/content/Context;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    sget-object v0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->DEFAULT_SIZE:Lcom/sonyericsson/conversations/model/Dimension;

    iput-object v0, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mSize:Lcom/sonyericsson/conversations/model/Dimension;

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mCurrentTask:Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView$Cancellable;

    .line 67
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mPaint:Landroid/graphics/Paint;

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mOldOrientation:I

    .line 94
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->init(Landroid/content/Context;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 99
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    sget-object v0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->DEFAULT_SIZE:Lcom/sonyericsson/conversations/model/Dimension;

    iput-object v0, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mSize:Lcom/sonyericsson/conversations/model/Dimension;

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mCurrentTask:Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView$Cancellable;

    .line 67
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mPaint:Landroid/graphics/Paint;

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mOldOrientation:I

    .line 100
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->init(Landroid/content/Context;)V

    .line 101
    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;
    .param p1, "x1"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->decodeBitmapFromStream(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private decodeBitmapFromStream(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 308
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 310
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v0, 0x0

    .line 311
    .local v0, "decodedBitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 313
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 314
    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 318
    if-eqz v1, :cond_0

    .line 319
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 322
    :cond_0
    return-object v0

    .line 318
    :catchall_0
    move-exception v3

    if-eqz v1, :cond_1

    .line 319
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 318
    :cond_1
    throw v3
.end method

.method private getBitmapSizeFromStream(Ljava/io/InputStream;)Landroid/graphics/BitmapFactory$Options;
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v1, 0x1

    .line 299
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 300
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 301
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 302
    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 303
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 304
    return-object v0
.end method

.method private getMaxDesiredDimension()Lcom/sonyericsson/conversations/model/Dimension;
    .locals 14

    .prologue
    .line 343
    iget-object v10, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 344
    .local v6, "res":Landroid/content/res/Resources;
    const/4 v9, 0x0

    .line 346
    .local v9, "statusbarHeight":I
    :try_start_0
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->getStatusbarHeight()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 351
    :goto_0
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v8, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 352
    .local v8, "screenWidth":I
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v7, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 354
    .local v7, "screenHeight":I
    iget v10, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mActionBarHeight:I

    sub-int v10, v7, v10

    sub-int v4, v10, v9

    .line 355
    .local v4, "paneHeight":I
    move v5, v8

    .line 356
    .local v5, "paneWidth":I
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isUseTwoPane()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 358
    iget v10, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mMessageListWeight:I

    int-to-float v10, v10

    iget v11, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mMessageListWeight:I

    iget v12, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mConversationListWeight:I

    add-int/2addr v11, v12

    int-to-float v11, v11

    div-float v1, v10, v11

    .line 360
    .local v1, "imageRatio":F
    int-to-float v10, v8

    mul-float/2addr v10, v1

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 363
    .end local v1    # "imageRatio":F
    :cond_0
    iget v10, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mBubbleFreeWidth:I

    sub-int v10, v5, v10

    iget v11, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mMargin:I

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mNegativeMargin:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mBubbleBorderSize:I

    mul-int/lit8 v11, v11, 0x2

    sub-int v3, v10, v11

    .line 365
    .local v3, "maxBubbleWidth":I
    iget v10, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mMargin:I

    mul-int/lit8 v10, v10, 0x2

    sub-int v10, v4, v10

    iget v11, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mBubbleBorderSize:I

    mul-int/lit8 v11, v11, 0x2

    sub-int v2, v10, v11

    .line 368
    .local v2, "maxBubbleHeight":I
    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->orientation:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1

    .line 369
    int-to-double v10, v2

    iget-wide v12, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mOverflowPercentage:D

    mul-double/2addr v10, v12

    double-to-int v2, v10

    .line 371
    :cond_1
    new-instance v10, Lcom/sonyericsson/conversations/model/Dimension;

    invoke-direct {v10, v3, v2}, Lcom/sonyericsson/conversations/model/Dimension;-><init>(II)V

    return-object v10

    .line 347
    .end local v2    # "maxBubbleHeight":I
    .end local v3    # "maxBubbleWidth":I
    .end local v4    # "paneHeight":I
    .end local v5    # "paneWidth":I
    .end local v7    # "screenHeight":I
    .end local v8    # "screenWidth":I
    :catch_0
    move-exception v0

    .line 348
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-static {v6}, Lcom/sonyericsson/conversations/ui/UiConfig;->initStatusbarHeight(Landroid/content/res/Resources;)V

    .line 349
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->getStatusbarHeight()I

    move-result v9

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 139
    if-nez p1, :cond_0

    .line 140
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Null context not allowed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 142
    :cond_0
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_1

    move-object v1, p1

    .line 143
    check-cast v1, Landroid/app/Activity;

    iput-object v1, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mActivity:Landroid/app/Activity;

    .line 148
    iput-object p1, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mContext:Landroid/content/Context;

    .line 149
    iget-object v1, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 150
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f02008a

    iput v1, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mNotFoundDrawableId:I

    .line 151
    const v1, 0x7f0d002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mBubbleBorderSize:I

    .line 152
    const v1, 0x7f0d002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mBubbleBorderRadius:I

    .line 153
    const v1, 0x7f0d002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mBubbleFreeWidth:I

    .line 154
    const v1, 0x7f09000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mMessageListWeight:I

    .line 155
    const v1, 0x7f09000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mConversationListWeight:I

    .line 156
    const v1, 0x7f0d005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mActionBarHeight:I

    .line 157
    const v1, 0x7f0d0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mMargin:I

    .line 158
    const v1, 0x7f0d002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mNegativeMargin:I

    .line 159
    const v1, 0x7f09000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v3, 0x4059000000000000L

    div-double/2addr v1, v3

    iput-wide v1, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mOverflowPercentage:D

    .line 161
    sget-object v1, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->DEFAULT_SIZE:Lcom/sonyericsson/conversations/model/Dimension;

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->setSize(Lcom/sonyericsson/conversations/model/Dimension;)V

    .line 162
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v5, v5, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mBitmapSize:Landroid/graphics/Rect;

    .line 163
    return-void

    .line 145
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Context need to be an instaqnce of Activity"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private setImageFromStream(Landroid/net/Uri;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    const/4 v0, 0x0

    .line 240
    .local v0, "bitmapOptions":Landroid/graphics/BitmapFactory$Options;
    iget-object v2, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 242
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->getBitmapSizeFromStream(Ljava/io/InputStream;)Landroid/graphics/BitmapFactory$Options;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 244
    if-eqz v1, :cond_0

    .line 245
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 249
    :cond_0
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {p0, v2, v3}, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->getDesiredSize(II)Lcom/sonyericsson/conversations/model/Dimension;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->setSize(Lcom/sonyericsson/conversations/model/Dimension;)V

    .line 252
    new-instance v2, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView$1;

    invoke-direct {v2, p0, p1}, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView$1;-><init>(Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;Landroid/net/Uri;)V

    iput-object v2, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mCurrentTask:Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView$Cancellable;

    .line 289
    sget-object v2, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v3, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mCurrentTask:Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView$Cancellable;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 290
    return-void

    .line 244
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    .line 245
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 244
    :cond_1
    throw v2
.end method

.method private setSize(Lcom/sonyericsson/conversations/model/Dimension;)V
    .locals 6
    .param p1, "newSize"    # Lcom/sonyericsson/conversations/model/Dimension;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mSize:Lcom/sonyericsson/conversations/model/Dimension;

    .line 167
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mBubbleBorderSize:I

    iget v2, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mBubbleBorderSize:I

    iget-object v3, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mSize:Lcom/sonyericsson/conversations/model/Dimension;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/Dimension;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mBubbleBorderSize:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mSize:Lcom/sonyericsson/conversations/model/Dimension;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/model/Dimension;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mBubbleBorderSize:I

    sub-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 172
    .local v0, "insideBubble":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mInsideBubble:Landroid/graphics/RectF;

    .line 173
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mClipPath:Landroid/graphics/Path;

    .line 174
    iget-object v1, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mClipPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mInsideBubble:Landroid/graphics/RectF;

    iget v3, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mBubbleBorderRadius:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mBubbleBorderRadius:I

    int-to-float v4, v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 176
    return-void
.end method


# virtual methods
.method public getDesiredSize(II)Lcom/sonyericsson/conversations/model/Dimension;
    .locals 9
    .param p1, "imageWidth"    # I
    .param p2, "imageHeight"    # I

    .prologue
    .line 384
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 385
    :cond_0
    sget-object v7, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->DEFAULT_SIZE:Lcom/sonyericsson/conversations/model/Dimension;

    .line 412
    :goto_0
    return-object v7

    .line 387
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->getMaxDesiredDimension()Lcom/sonyericsson/conversations/model/Dimension;

    move-result-object v3

    .line 388
    .local v3, "maxDim":Lcom/sonyericsson/conversations/model/Dimension;
    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/Dimension;->getWidth()I

    move-result v5

    .line 389
    .local v5, "maxWidth":I
    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/Dimension;->getHeight()I

    move-result v4

    .line 392
    .local v4, "maxHeight":I
    mul-int v7, v5, p2

    div-int v0, v7, p1

    .line 394
    .local v0, "imageHeightUsingMaxWidth":I
    if-ge v0, v4, :cond_2

    .line 396
    new-instance v7, Lcom/sonyericsson/conversations/model/Dimension;

    invoke-direct {v7, v5, v0}, Lcom/sonyericsson/conversations/model/Dimension;-><init>(II)V

    goto :goto_0

    .line 401
    :cond_2
    mul-int v7, v4, p1

    div-int v2, v7, p2

    .line 402
    .local v2, "imageWidthUsingMaxHeight":I
    const v7, 0x3f333333

    int-to-float v8, v5

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 403
    .local v6, "minWidth":I
    if-lt v2, v6, :cond_3

    .line 404
    new-instance v7, Lcom/sonyericsson/conversations/model/Dimension;

    invoke-direct {v7, v2, v4}, Lcom/sonyericsson/conversations/model/Dimension;-><init>(II)V

    goto :goto_0

    .line 411
    :cond_3
    mul-int v7, v6, p2

    div-int v1, v7, p1

    .line 412
    .local v1, "imageHeightUsingMinWidth":I
    new-instance v7, Lcom/sonyericsson/conversations/model/Dimension;

    invoke-direct {v7, v6, v1}, Lcom/sonyericsson/conversations/model/Dimension;-><init>(II)V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 106
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    iget v3, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mOldOrientation:I

    if-eq v2, v3, :cond_0

    .line 107
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 108
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    move-object v2, v1

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_1

    .line 115
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-void

    .line 111
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 112
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->getDesiredSize(II)Lcom/sonyericsson/conversations/model/Dimension;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->setSize(Lcom/sonyericsson/conversations/model/Dimension;)V

    .line 113
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mOldOrientation:I

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 126
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 127
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_0

    .line 136
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-void

    .line 132
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 133
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 134
    iget-object v2, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mBitmapSize:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mInsideBubble:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 119
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 120
    iget-object v0, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mSize:Lcom/sonyericsson/conversations/model/Dimension;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/Dimension;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mSize:Lcom/sonyericsson/conversations/model/Dimension;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Dimension;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 121
    return-void
.end method

.method public setErrorDrawable()V
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mNotFoundDrawableId:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 207
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    .line 190
    if-nez p1, :cond_0

    .line 191
    sget-object v2, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->DEFAULT_SIZE:Lcom/sonyericsson/conversations/model/Dimension;

    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->setSize(Lcom/sonyericsson/conversations/model/Dimension;)V

    .line 192
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mBitmapSize:Landroid/graphics/Rect;

    .line 199
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 200
    return-void

    .line 194
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 195
    .local v1, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 196
    .local v0, "height":I
    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->getDesiredSize(II)Lcom/sonyericsson/conversations/model/Dimension;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->setSize(Lcom/sonyericsson/conversations/model/Dimension;)V

    .line 197
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v3, v3, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mBitmapSize:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method public setImageNotFoundDrawable(I)V
    .locals 0
    .param p1, "drawableId"    # I

    .prologue
    .line 184
    iput p1, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mNotFoundDrawableId:I

    .line 185
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 217
    iget-object v1, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mCurrentTask:Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView$Cancellable;

    if-eqz v1, :cond_0

    .line 218
    iget-object v1, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mCurrentTask:Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView$Cancellable;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView$Cancellable;->cancel()V

    .line 222
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->setImageFromStream(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_0
    return-void

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->setErrorDrawable()V

    goto :goto_0
.end method
