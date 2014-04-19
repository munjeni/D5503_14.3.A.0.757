.class public final Lcom/sonyericsson/provider/SemcMediaStore;
.super Ljava/lang/Object;
.source "SemcMediaStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/provider/SemcMediaStore$ExtendedVideo;,
        Lcom/sonyericsson/provider/SemcMediaStore$ExtendedImages;,
        Lcom/sonyericsson/provider/SemcMediaStore$ExtendedAudio;,
        Lcom/sonyericsson/provider/SemcMediaStore$ExtendedFiles;,
        Lcom/sonyericsson/provider/SemcMediaStore$ExtendedTypes;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "media"

.field private static final CONTENT_AUTHORITY_SLASH:Ljava/lang/String; = "content://media/"

.field private static final SLASH_REFERENCES:Ljava/lang/String; = "/references"

.field private static final TABLE_AUDIO:Ljava/lang/String; = "/audio/media"

.field private static final TABLE_EXT_AUDIO:Ljava/lang/String; = "/extended_audio/media"

.field private static final TABLE_EXT_FILE:Ljava/lang/String; = "/extended_file"

.field private static final TABLE_EXT_IMAGE:Ljava/lang/String; = "/extended_images/media"

.field private static final TABLE_EXT_OBJECT:Ljava/lang/String; = "/extended_object"

.field private static final TABLE_EXT_VIDEO:Ljava/lang/String; = "/extended_video/media"

.field private static final TABLE_IMAGE:Ljava/lang/String; = "/images/media"

.field private static final TABLE_OBJECT:Ljava/lang/String; = "/object"

.field private static final TABLE_TYPES:Ljava/lang/String; = "/extended_types"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 555
    return-void
.end method

.method public static getVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 657
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://media/internal/extended_version"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "version"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 660
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 662
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 663
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 666
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 669
    :cond_0
    :goto_0
    return-object v3

    .line 666
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method
