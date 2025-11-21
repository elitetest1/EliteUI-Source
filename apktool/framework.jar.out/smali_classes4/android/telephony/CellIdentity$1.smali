.class Landroid/telephony/CellIdentity$1;
.super Ljava/lang/Object;
.source "CellIdentity.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CellIdentity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/CellIdentity;",
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
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/telephony/CellIdentity;
    .locals 0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Bad Cell identity Parcel"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-static {p1}, Landroid/telephony/CellIdentityNr;->createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellIdentityNr;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p1}, Landroid/telephony/CellIdentityTdscdma;->createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellIdentityTdscdma;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-static {p1}, Landroid/telephony/CellIdentityWcdma;->createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellIdentityWcdma;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {p1}, Landroid/telephony/CellIdentityLte;->createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellIdentityLte;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-static {p1}, Landroid/telephony/CellIdentityCdma;->createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellIdentityCdma;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-static {p1}, Landroid/telephony/CellIdentityGsm;->createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellIdentityGsm;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

    invoke-virtual {p0, p1}, Landroid/telephony/CellIdentity$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/CellIdentity;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newArray(I)[Landroid/telephony/CellIdentity;
    .locals 0

    new-array p0, p1, [Landroid/telephony/CellIdentity;

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

    invoke-virtual {p0, p1}, Landroid/telephony/CellIdentity$1;->newArray(I)[Landroid/telephony/CellIdentity;

    move-result-object p0

    return-object p0
.end method
