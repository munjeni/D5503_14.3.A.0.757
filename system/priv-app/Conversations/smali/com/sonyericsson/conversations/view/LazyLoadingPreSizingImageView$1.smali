.class Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView$1;
.super Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView$Cancellable;
.source "LazyLoadingPreSizingImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->setImageFromStream(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 252
    iput-object p1, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView$1;->this$0:Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;

    iput-object p2, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView$1;->val$uri:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView$Cancellable;-><init>(Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView$1;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 257
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView$1;->this$0:Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;

    iget-object v3, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView$1;->val$uri:Landroid/net/Uri;

    # invokes: Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->decodeBitmapFromStream(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    invoke-static {v2, v3}, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->access$100(Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 258
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 259
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView$Cancellable;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 260
    iget-object v2, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView$1;->this$0:Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;

    # getter for: Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->access$200(Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;)Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView$1$1;

    invoke-direct {v3, p0}, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView$1$1;-><init>(Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView$1;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 287
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-void

    .line 269
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView$Cancellable;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 270
    iget-object v2, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView$1;->this$0:Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;

    # getter for: Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->access$200(Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;)Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView$1$2;

    invoke-direct {v3, p0, v0}, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView$1$2;-><init>(Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView$1;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 277
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 278
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView$Cancellable;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 279
    iget-object v2, p0, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView$1;->this$0:Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;

    # getter for: Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;->access$200(Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView;)Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView$1$3;

    invoke-direct {v3, p0}, Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView$1$3;-><init>(Lcom/sonyericsson/conversations/view/LazyLoadingPreSizingImageView$1;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
