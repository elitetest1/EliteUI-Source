.class Landroid/media/tv/TunedInfo$1;
.super Ljava/lang/Object;
.source "TunedInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TunedInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/media/tv/TunedInfo;",
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
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/media/tv/TunedInfo;
    .locals 2

    const/4 p0, 0x0

    :try_start_0
    new-instance v0, Landroid/media/tv/TunedInfo;

    invoke-direct {v0, p1, p0}, Landroid/media/tv/TunedInfo;-><init>(Landroid/os/Parcel;Landroid/media/tv/TunedInfo-IA;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    const-string v0, "TunedInfo"

    const-string v1, "Exception creating TunedInfo from parcel"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

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

    invoke-virtual {p0, p1}, Landroid/media/tv/TunedInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/media/tv/TunedInfo;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newArray(I)[Landroid/media/tv/TunedInfo;
    .locals 0

    new-array p0, p1, [Landroid/media/tv/TunedInfo;

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

    invoke-virtual {p0, p1}, Landroid/media/tv/TunedInfo$1;->newArray(I)[Landroid/media/tv/TunedInfo;

    move-result-object p0

    return-object p0
.end method
