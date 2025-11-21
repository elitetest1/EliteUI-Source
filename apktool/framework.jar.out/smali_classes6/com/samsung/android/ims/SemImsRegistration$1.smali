.class Lcom/samsung/android/ims/SemImsRegistration$1;
.super Ljava/lang/Object;
.source "SemImsRegistration.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ims/SemImsRegistration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/ims/SemImsRegistration;",
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
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/ims/SemImsRegistration;
    .locals 1

    new-instance p0, Lcom/samsung/android/ims/SemImsRegistration;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/ims/SemImsRegistration;-><init>(Landroid/os/Parcel;Lcom/samsung/android/ims/SemImsRegistration-IA;)V

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

    invoke-virtual {p0, p1}, Lcom/samsung/android/ims/SemImsRegistration$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/ims/SemImsRegistration;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newArray(I)[Lcom/samsung/android/ims/SemImsRegistration;
    .locals 0

    new-array p0, p1, [Lcom/samsung/android/ims/SemImsRegistration;

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

    invoke-virtual {p0, p1}, Lcom/samsung/android/ims/SemImsRegistration$1;->newArray(I)[Lcom/samsung/android/ims/SemImsRegistration;

    move-result-object p0

    return-object p0
.end method
