.class Landroid/graphics/GraphicBuffer$1;
.super Ljava/lang/Object;
.source "GraphicBuffer.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/GraphicBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/graphics/GraphicBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/graphics/GraphicBuffer;
    .locals 8

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {p1}, Landroid/graphics/GraphicBuffer;->-$$Nest$smnReadGraphicBufferFromParcel(Landroid/os/Parcel;)J

    move-result-wide v5

    const-wide/16 p0, 0x0

    cmp-long p0, v5, p0

    if-eqz p0, :cond_0

    new-instance v0, Landroid/graphics/GraphicBuffer;

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/graphics/GraphicBuffer;-><init>(IIIIJLandroid/graphics/GraphicBuffer-IA;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/graphics/GraphicBuffer$1;->createFromParcel(Landroid/os/Parcel;)Landroid/graphics/GraphicBuffer;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newArray(I)[Landroid/graphics/GraphicBuffer;
    .locals 0

    new-array p0, p1, [Landroid/graphics/GraphicBuffer;

    return-object p0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/graphics/GraphicBuffer$1;->newArray(I)[Landroid/graphics/GraphicBuffer;

    move-result-object p0

    return-object p0
.end method
