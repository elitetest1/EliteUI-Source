.class Landroid/graphics/Gainmap$1;
.super Ljava/lang/Object;
.source "Gainmap.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Gainmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/graphics/Gainmap;",
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
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/graphics/Gainmap;
    .locals 2

    new-instance p0, Landroid/graphics/Gainmap;

    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Landroid/graphics/Gainmap;-><init>(Landroid/graphics/Bitmap;)V

    iget-wide v0, p0, Landroid/graphics/Gainmap;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Gainmap;->-$$Nest$smnReadGainmapFromParcel(JLandroid/os/Parcel;)V

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

    invoke-virtual {p0, p1}, Landroid/graphics/Gainmap$1;->createFromParcel(Landroid/os/Parcel;)Landroid/graphics/Gainmap;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newArray(I)[Landroid/graphics/Gainmap;
    .locals 0

    new-array p0, p1, [Landroid/graphics/Gainmap;

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

    invoke-virtual {p0, p1}, Landroid/graphics/Gainmap$1;->newArray(I)[Landroid/graphics/Gainmap;

    move-result-object p0

    return-object p0
.end method
