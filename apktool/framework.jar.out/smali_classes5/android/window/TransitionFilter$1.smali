.class Landroid/window/TransitionFilter$1;
.super Ljava/lang/Object;
.source "TransitionFilter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/TransitionFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/window/TransitionFilter;",
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
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/window/TransitionFilter;
    .locals 1

    new-instance p0, Landroid/window/TransitionFilter;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/window/TransitionFilter;-><init>(Landroid/os/Parcel;Landroid/window/TransitionFilter-IA;)V

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

    invoke-virtual {p0, p1}, Landroid/window/TransitionFilter$1;->createFromParcel(Landroid/os/Parcel;)Landroid/window/TransitionFilter;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newArray(I)[Landroid/window/TransitionFilter;
    .locals 0

    new-array p0, p1, [Landroid/window/TransitionFilter;

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

    invoke-virtual {p0, p1}, Landroid/window/TransitionFilter$1;->newArray(I)[Landroid/window/TransitionFilter;

    move-result-object p0

    return-object p0
.end method
