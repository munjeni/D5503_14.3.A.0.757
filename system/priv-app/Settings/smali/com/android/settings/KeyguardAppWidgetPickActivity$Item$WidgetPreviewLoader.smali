.class Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;
.super Landroid/os/AsyncTask;
.source "KeyguardAppWidgetPickActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WidgetPreviewLoader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$RectCache;,
        Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$PaintCache;,
        Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$CanvasCache;,
        Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$WeakReferenceThreadLocal;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mIconDpi:I

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mResources:Landroid/content/res/Resources;

.field private mView:Landroid/widget/ImageView;

.field sCachedAppWidgetPreviewCanvas:Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$CanvasCache;

.field sCachedAppWidgetPreviewDestRect:Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$RectCache;

.field sCachedAppWidgetPreviewPaint:Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$PaintCache;

.field sCachedAppWidgetPreviewSrcRect:Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$RectCache;

.field final synthetic this$0:Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;


# direct methods
.method public constructor <init>(Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;Landroid/content/Context;Landroid/widget/ImageView;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "v"    # Landroid/widget/ImageView;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->this$0:Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;

    .line 209
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 295
    new-instance v1, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$CanvasCache;

    invoke-direct {v1, p0}, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$CanvasCache;-><init>(Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;)V

    iput-object v1, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->sCachedAppWidgetPreviewCanvas:Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$CanvasCache;

    .line 296
    new-instance v1, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$RectCache;

    invoke-direct {v1, p0}, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$RectCache;-><init>(Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;)V

    iput-object v1, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->sCachedAppWidgetPreviewSrcRect:Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$RectCache;

    .line 297
    new-instance v1, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$RectCache;

    invoke-direct {v1, p0}, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$RectCache;-><init>(Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;)V

    iput-object v1, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->sCachedAppWidgetPreviewDestRect:Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$RectCache;

    .line 298
    new-instance v1, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$PaintCache;

    invoke-direct {v1, p0}, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$PaintCache;-><init>(Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;)V

    iput-object v1, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->sCachedAppWidgetPreviewPaint:Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$PaintCache;

    .line 210
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->mResources:Landroid/content/res/Resources;

    .line 211
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 212
    const-string v1, "activity"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 214
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v1

    iput v1, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->mIconDpi:I

    .line 215
    iput-object p3, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->mView:Landroid/widget/ImageView;

    .line 216
    return-void
.end method

.method private getWidgetPreview(Landroid/content/ComponentName;IIII)Landroid/graphics/Bitmap;
    .locals 26
    .param p1, "provider"    # Landroid/content/ComponentName;
    .param p2, "previewImage"    # I
    .param p3, "iconId"    # I
    .param p4, "maxWidth"    # I
    .param p5, "maxHeight"    # I

    .prologue
    .line 303
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v22

    .line 304
    .local v22, "packageName":Ljava/lang/String;
    if-gez p4, :cond_0

    const p4, 0x7fffffff

    .line 305
    :cond_0
    if-gez p5, :cond_1

    const p5, 0x7fffffff

    .line 308
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f0d0003

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    .line 310
    .local v9, "appIconSize":I
    const/4 v11, 0x0

    .line 311
    .local v11, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz p2, :cond_2

    .line 312
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v7, 0x0

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v4, v0, v1, v7}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 313
    if-nez v11, :cond_2

    .line 314
    const-string v4, "KeyguardAppWidgetPickActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t load widget preview drawable 0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for provider: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_2
    const/4 v6, 0x0

    .line 322
    .local v6, "defaultPreview":Landroid/graphics/Bitmap;
    if-eqz v11, :cond_5

    const/16 v25, 0x1

    .line 323
    .local v25, "widgetPreviewExists":Z
    :goto_0
    if-eqz v25, :cond_6

    .line 324
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v18

    .line 325
    .local v18, "bitmapWidth":I
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v17

    .line 347
    .local v17, "bitmapHeight":I
    :cond_3
    :goto_1
    const/high16 v23, 0x3f800000

    .line 348
    .local v23, "scale":F
    move/from16 v0, v18

    move/from16 v1, p4

    if-le v0, v1, :cond_4

    .line 349
    move/from16 v0, p4

    int-to-float v4, v0

    move/from16 v0, v18

    int-to-float v7, v0

    div-float v23, v4, v7

    .line 351
    :cond_4
    move/from16 v0, v18

    int-to-float v4, v0

    mul-float v4, v4, v23

    float-to-int v15, v4

    .line 352
    .local v15, "finalPreviewWidth":I
    move/from16 v0, v17

    int-to-float v4, v0

    mul-float v4, v4, v23

    float-to-int v0, v4

    move/from16 v16, v0

    .line 354
    .local v16, "finalPreviewHeight":I
    move/from16 v18, v15

    .line 355
    move/from16 v0, v16

    move/from16 v1, p5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 357
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v0, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 361
    .local v12, "preview":Landroid/graphics/Bitmap;
    if-eqz v25, :cond_8

    .line 362
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v16}, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V

    .line 381
    :goto_2
    return-object v12

    .line 322
    .end local v12    # "preview":Landroid/graphics/Bitmap;
    .end local v15    # "finalPreviewWidth":I
    .end local v16    # "finalPreviewHeight":I
    .end local v17    # "bitmapHeight":I
    .end local v18    # "bitmapWidth":I
    .end local v23    # "scale":F
    .end local v25    # "widgetPreviewExists":Z
    :cond_5
    const/16 v25, 0x0

    goto :goto_0

    .line 328
    .restart local v25    # "widgetPreviewExists":Z
    :cond_6
    move/from16 v18, v9

    .line 329
    .restart local v18    # "bitmapWidth":I
    move/from16 v17, v9

    .line 330
    .restart local v17    # "bitmapHeight":I
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v0, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 334
    const/4 v5, 0x0

    .line 335
    .local v5, "icon":Landroid/graphics/drawable/Drawable;
    if-lez p3, :cond_7

    .line 336
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->getFullResIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 337
    :cond_7
    if-eqz v5, :cond_3

    .line 338
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p0

    move v10, v9

    invoke-direct/range {v4 .. v10}, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 341
    :catch_0
    move-exception v4

    goto :goto_1

    .line 365
    .end local v5    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v12    # "preview":Landroid/graphics/Bitmap;
    .restart local v15    # "finalPreviewWidth":I
    .restart local v16    # "finalPreviewHeight":I
    .restart local v23    # "scale":F
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->sCachedAppWidgetPreviewCanvas:Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$CanvasCache;

    invoke-virtual {v4}, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$WeakReferenceThreadLocal;->get()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/graphics/Canvas;

    .line 366
    .local v19, "c":Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->sCachedAppWidgetPreviewSrcRect:Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$RectCache;

    invoke-virtual {v4}, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$WeakReferenceThreadLocal;->get()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/graphics/Rect;

    .line 367
    .local v24, "src":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->sCachedAppWidgetPreviewDestRect:Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$RectCache;

    invoke-virtual {v4}, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$WeakReferenceThreadLocal;->get()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/graphics/Rect;

    .line 368
    .local v20, "dest":Landroid/graphics/Rect;
    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 369
    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v7, v8, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 370
    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v4, v7, v15, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 372
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->sCachedAppWidgetPreviewPaint:Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$PaintCache;

    invoke-virtual {v4}, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$WeakReferenceThreadLocal;->get()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/graphics/Paint;

    .line 373
    .local v21, "p":Landroid/graphics/Paint;
    if-nez v21, :cond_9

    .line 374
    new-instance v21, Landroid/graphics/Paint;

    .end local v21    # "p":Landroid/graphics/Paint;
    invoke-direct/range {v21 .. v21}, Landroid/graphics/Paint;-><init>()V

    .line 375
    .restart local v21    # "p":Landroid/graphics/Paint;
    const/4 v4, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 376
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->sCachedAppWidgetPreviewPaint:Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$PaintCache;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader$WeakReferenceThreadLocal;->set(Ljava/lang/Object;)V

    .line 378
    :cond_9
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 379
    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_2
.end method

.method private renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIII)V
    .locals 8
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "w"    # I
    .param p6, "h"    # I

    .prologue
    .line 415
    const/high16 v7, 0x3f800000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIF)V

    .line 416
    return-void
.end method

.method private renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIF)V
    .locals 4
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "w"    # I
    .param p6, "h"    # I
    .param p7, "scale"    # F

    .prologue
    .line 420
    if-eqz p2, :cond_0

    .line 421
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 422
    .local v0, "c":Landroid/graphics/Canvas;
    invoke-virtual {v0, p7, p7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 423
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 424
    .local v1, "oldBounds":Landroid/graphics/Rect;
    add-int v2, p3, p5

    add-int v3, p4, p6

    invoke-virtual {p1, p3, p4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 425
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 426
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 427
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 429
    .end local v0    # "c":Landroid/graphics/Canvas;
    .end local v1    # "oldBounds":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 203
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 218
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0d001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 221
    .local v4, "appWidgetPreviewWidth":I
    iget-object v0, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0d001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 223
    .local v5, "appWidgetPreviewHeight":I
    new-instance v1, Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->this$0:Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;

    iget-object v0, v0, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->this$0:Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;

    iget-object v2, v2, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;->className:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->this$0:Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;

    iget v2, v0, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;->appWidgetPreviewId:I

    iget-object v0, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->this$0:Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;

    iget v3, v0, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item;->iconId:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->getWidgetPreview(Landroid/content/ComponentName;IIII)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 226
    .local v6, "b":Landroid/graphics/Bitmap;
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    aput-object v6, v0, v1

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 228
    .end local v4    # "appWidgetPreviewWidth":I
    .end local v5    # "appWidgetPreviewHeight":I
    .end local v6    # "b":Landroid/graphics/Bitmap;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 384
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10d0000

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "iconId"    # I

    .prologue
    .line 391
    :try_start_0
    iget v2, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->mIconDpi:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 396
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v0, :cond_0

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :goto_1
    return-object v0

    .line 392
    :catch_0
    move-exception v1

    .line 393
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v0, 0x0

    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 396
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1
.end method

.method public getFullResIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "iconId"    # I

    .prologue
    .line 402
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 406
    .local v1, "resources":Landroid/content/res/Resources;
    :goto_0
    if-eqz v1, :cond_0

    .line 407
    if-eqz p2, :cond_0

    .line 408
    invoke-virtual {p0, v1, p2}, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 411
    :goto_1
    return-object v2

    .line 403
    .end local v1    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 404
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    .restart local v1    # "resources":Landroid/content/res/Resources;
    goto :goto_0

    .line 411
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_1
.end method

.method public varargs onProgressUpdate([Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "values"    # [Landroid/graphics/Bitmap;

    .prologue
    .line 231
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 232
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 233
    .local v0, "b":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->mView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 235
    .end local v0    # "b":Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method public bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 203
    check-cast p1, [Landroid/graphics/Bitmap;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/KeyguardAppWidgetPickActivity$Item$WidgetPreviewLoader;->onProgressUpdate([Landroid/graphics/Bitmap;)V

    return-void
.end method
