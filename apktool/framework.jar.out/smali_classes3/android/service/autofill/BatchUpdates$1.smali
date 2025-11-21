.class Landroid/service/autofill/BatchUpdates$1;
.super Ljava/lang/Object;
.source "BatchUpdates.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/BatchUpdates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/autofill/BatchUpdates;",
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
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/BatchUpdates;
    .locals 7

    new-instance p0, Landroid/service/autofill/BatchUpdates$Builder;

    invoke-direct {p0}, Landroid/service/autofill/BatchUpdates$Builder;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-class v2, Landroid/service/autofill/InternalTransformation;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/service/autofill/InternalTransformation;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget v5, v0, v4

    aget-object v6, v2, v4

    invoke-virtual {p0, v5, v6}, Landroid/service/autofill/BatchUpdates$Builder;->transformChild(ILandroid/service/autofill/Transformation;)Landroid/service/autofill/BatchUpdates$Builder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-class v0, Landroid/widget/RemoteViews;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/RemoteViews;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Landroid/service/autofill/BatchUpdates$Builder;->updateTemplate(Landroid/widget/RemoteViews;)Landroid/service/autofill/BatchUpdates$Builder;

    :cond_1
    invoke-virtual {p0}, Landroid/service/autofill/BatchUpdates$Builder;->build()Landroid/service/autofill/BatchUpdates;

    move-result-object p0

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

    invoke-virtual {p0, p1}, Landroid/service/autofill/BatchUpdates$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/BatchUpdates;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newArray(I)[Landroid/service/autofill/BatchUpdates;
    .locals 0

    new-array p0, p1, [Landroid/service/autofill/BatchUpdates;

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

    invoke-virtual {p0, p1}, Landroid/service/autofill/BatchUpdates$1;->newArray(I)[Landroid/service/autofill/BatchUpdates;

    move-result-object p0

    return-object p0
.end method
