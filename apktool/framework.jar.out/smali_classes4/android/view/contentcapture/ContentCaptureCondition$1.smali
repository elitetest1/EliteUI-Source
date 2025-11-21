.class Landroid/view/contentcapture/ContentCaptureCondition$1;
.super Ljava/lang/Object;
.source "ContentCaptureCondition.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/contentcapture/ContentCaptureCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/contentcapture/ContentCaptureCondition;",
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
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/view/contentcapture/ContentCaptureCondition;
    .locals 2

    new-instance p0, Landroid/view/contentcapture/ContentCaptureCondition;

    const/4 v0, 0x0

    const-class v1, Landroid/content/LocusId;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/LocusId;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {p0, v0, p1}, Landroid/view/contentcapture/ContentCaptureCondition;-><init>(Landroid/content/LocusId;I)V

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

    invoke-virtual {p0, p1}, Landroid/view/contentcapture/ContentCaptureCondition$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/contentcapture/ContentCaptureCondition;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newArray(I)[Landroid/view/contentcapture/ContentCaptureCondition;
    .locals 0

    new-array p0, p1, [Landroid/view/contentcapture/ContentCaptureCondition;

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

    invoke-virtual {p0, p1}, Landroid/view/contentcapture/ContentCaptureCondition$1;->newArray(I)[Landroid/view/contentcapture/ContentCaptureCondition;

    move-result-object p0

    return-object p0
.end method
