.class Lcom/sonyericsson/conversations/model/ModelCache$InUseBitmap;
.super Ljava/lang/Object;
.source "ModelCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/model/ModelCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InUseBitmap"
.end annotation


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public inUse:Z

.field final synthetic this$0:Lcom/sonyericsson/conversations/model/ModelCache;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/model/ModelCache;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/sonyericsson/conversations/model/ModelCache$InUseBitmap;->this$0:Lcom/sonyericsson/conversations/model/ModelCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/model/ModelCache$InUseBitmap;->bitmap:Landroid/graphics/Bitmap;

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/model/ModelCache$InUseBitmap;->inUse:Z

    .line 90
    iput-object p2, p0, Lcom/sonyericsson/conversations/model/ModelCache$InUseBitmap;->bitmap:Landroid/graphics/Bitmap;

    .line 91
    return-void
.end method
