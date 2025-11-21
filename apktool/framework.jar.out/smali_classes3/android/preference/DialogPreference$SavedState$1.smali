.class Landroid/preference/DialogPreference$SavedState$1;
.super Ljava/lang/Object;
.source "DialogPreference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/DialogPreference$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/preference/DialogPreference$SavedState;",
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
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/preference/DialogPreference$SavedState;
    .locals 0

    new-instance p0, Landroid/preference/DialogPreference$SavedState;

    invoke-direct {p0, p1}, Landroid/preference/DialogPreference$SavedState;-><init>(Landroid/os/Parcel;)V

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

    invoke-virtual {p0, p1}, Landroid/preference/DialogPreference$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/preference/DialogPreference$SavedState;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newArray(I)[Landroid/preference/DialogPreference$SavedState;
    .locals 0

    new-array p0, p1, [Landroid/preference/DialogPreference$SavedState;

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

    invoke-virtual {p0, p1}, Landroid/preference/DialogPreference$SavedState$1;->newArray(I)[Landroid/preference/DialogPreference$SavedState;

    move-result-object p0

    return-object p0
.end method
