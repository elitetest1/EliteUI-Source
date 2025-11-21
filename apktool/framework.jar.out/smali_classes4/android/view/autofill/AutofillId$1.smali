.class Landroid/view/autofill/AutofillId$1;
.super Ljava/lang/Object;
.source "AutofillId.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/autofill/AutofillId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/autofill/AutofillId;",
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
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/view/autofill/AutofillId;
    .locals 7

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    and-int/lit8 p0, v1, 0x4

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    move v5, p0

    and-int/lit8 p0, v1, 0x1

    if-eqz p0, :cond_1

    new-instance v0, Landroid/view/autofill/AutofillId;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    int-to-long v3, p0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/view/autofill/AutofillId;-><init>(IIJILandroid/view/autofill/AutofillId-IA;)V

    return-object v0

    :cond_1
    and-int/lit8 p0, v1, 0x2

    if-eqz p0, :cond_2

    new-instance v0, Landroid/view/autofill/AutofillId;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/view/autofill/AutofillId;-><init>(IIJILandroid/view/autofill/AutofillId-IA;)V

    return-object v0

    :cond_2
    new-instance v0, Landroid/view/autofill/AutofillId;

    const-wide/16 v3, -0x1

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/view/autofill/AutofillId;-><init>(IIJILandroid/view/autofill/AutofillId-IA;)V

    return-object v0
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

    invoke-virtual {p0, p1}, Landroid/view/autofill/AutofillId$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/autofill/AutofillId;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newArray(I)[Landroid/view/autofill/AutofillId;
    .locals 0

    new-array p0, p1, [Landroid/view/autofill/AutofillId;

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

    invoke-virtual {p0, p1}, Landroid/view/autofill/AutofillId$1;->newArray(I)[Landroid/view/autofill/AutofillId;

    move-result-object p0

    return-object p0
.end method
