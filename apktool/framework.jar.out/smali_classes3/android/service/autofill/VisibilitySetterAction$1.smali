.class Landroid/service/autofill/VisibilitySetterAction$1;
.super Ljava/lang/Object;
.source "VisibilitySetterAction.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/VisibilitySetterAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/autofill/VisibilitySetterAction;",
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
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/VisibilitySetterAction;
    .locals 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readSparseIntArray()Landroid/util/SparseIntArray;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x0

    move-object v1, p1

    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    if-nez v1, :cond_0

    new-instance v1, Landroid/service/autofill/VisibilitySetterAction$Builder;

    invoke-direct {v1, v2, v3}, Landroid/service/autofill/VisibilitySetterAction$Builder;-><init>(II)V

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v2, v3}, Landroid/service/autofill/VisibilitySetterAction$Builder;->setVisibility(II)Landroid/service/autofill/VisibilitySetterAction$Builder;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    return-object p1

    :cond_2
    invoke-virtual {v1}, Landroid/service/autofill/VisibilitySetterAction$Builder;->build()Landroid/service/autofill/VisibilitySetterAction;

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

    invoke-virtual {p0, p1}, Landroid/service/autofill/VisibilitySetterAction$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/VisibilitySetterAction;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newArray(I)[Landroid/service/autofill/VisibilitySetterAction;
    .locals 0

    new-array p0, p1, [Landroid/service/autofill/VisibilitySetterAction;

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

    invoke-virtual {p0, p1}, Landroid/service/autofill/VisibilitySetterAction$1;->newArray(I)[Landroid/service/autofill/VisibilitySetterAction;

    move-result-object p0

    return-object p0
.end method
