.class final Lcom/stericsson/hardware/fm/FmBand$1;
.super Ljava/lang/Object;
.source "FmBand.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stericsson/hardware/fm/FmBand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/stericsson/hardware/fm/FmBand;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/stericsson/hardware/fm/FmBand;
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 247
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 248
    .local v3, "minfreq":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 249
    .local v2, "maxfreq":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 250
    .local v4, "offset":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 251
    .local v1, "defaultFreq":I
    new-instance v0, Lcom/stericsson/hardware/fm/FmBand;

    invoke-direct {v0, v3, v2, v4, v1}, Lcom/stericsson/hardware/fm/FmBand;-><init>(IIII)V

    .line 252
    .local v0, "band":Lcom/stericsson/hardware/fm/FmBand;
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 245
    invoke-virtual {p0, p1}, Lcom/stericsson/hardware/fm/FmBand$1;->createFromParcel(Landroid/os/Parcel;)Lcom/stericsson/hardware/fm/FmBand;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/stericsson/hardware/fm/FmBand;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 256
    new-array v0, p1, [Lcom/stericsson/hardware/fm/FmBand;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 245
    invoke-virtual {p0, p1}, Lcom/stericsson/hardware/fm/FmBand$1;->newArray(I)[Lcom/stericsson/hardware/fm/FmBand;

    move-result-object v0

    return-object v0
.end method
