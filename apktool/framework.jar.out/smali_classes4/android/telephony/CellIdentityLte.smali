.class public final Landroid/telephony/CellIdentityLte;
.super Landroid/telephony/CellIdentity;
.source "CellIdentityLte.java"


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellIdentityLte;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DBG:Z = false

.field private static final blacklist MAX_BANDWIDTH:I = 0x4e20

.field private static final blacklist MAX_CI:I = 0xfffffff

.field private static final blacklist MAX_EARFCN:I = 0x3ffff

.field private static final blacklist MAX_PCI:I = 0x1f7

.field private static final blacklist MAX_TAC:I = 0xffff

.field private static final greylist-max-o TAG:Ljava/lang/String; = "CellIdentityLte"


# instance fields
.field private final blacklist mAdditionalPlmns:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mBands:[I

.field private final greylist-max-o mBandwidth:I

.field private final greylist-max-o mCi:I

.field private blacklist mCsgInfo:Landroid/telephony/ClosedSubscriberGroupInfo;

.field private final blacklist mEarfcn:I

.field private final greylist-max-o mPci:I

.field private final greylist-max-o mTac:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/CellIdentityLte$1;

    invoke-direct {v0}, Landroid/telephony/CellIdentityLte$1;-><init>()V

    sput-object v0, Landroid/telephony/CellIdentityLte;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-r <init>()V
    .locals 7

    sget-object v1, Landroid/telephony/CellIdentityLte;->TAG:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/telephony/CellIdentity;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const p0, 0x7fffffff

    iput p0, v0, Landroid/telephony/CellIdentityLte;->mCi:I

    iput p0, v0, Landroid/telephony/CellIdentityLte;->mPci:I

    iput p0, v0, Landroid/telephony/CellIdentityLte;->mTac:I

    iput p0, v0, Landroid/telephony/CellIdentityLte;->mEarfcn:I

    const/4 v1, 0x0

    new-array v1, v1, [I

    iput-object v1, v0, Landroid/telephony/CellIdentityLte;->mBands:[I

    iput p0, v0, Landroid/telephony/CellIdentityLte;->mBandwidth:I

    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    iput-object p0, v0, Landroid/telephony/CellIdentityLte;->mAdditionalPlmns:Landroid/util/ArraySet;

    const/4 p0, 0x0

    iput-object p0, v0, Landroid/telephony/CellIdentityLte;->mCsgInfo:Landroid/telephony/ClosedSubscriberGroupInfo;

    iput-object p0, v0, Landroid/telephony/CellIdentityLte;->mGlobalCellId:Ljava/lang/String;

    return-void
.end method

.method public constructor greylist-max-p <init>(IIIII)V
    .locals 14

    const/4 v0, 0x0

    new-array v6, v0, [I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12}, Landroid/util/ArraySet;-><init>()V

    const/4 v13, 0x0

    const v5, 0x7fffffff

    const v7, 0x7fffffff

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-direct/range {v1 .. v13}, Landroid/telephony/CellIdentityLte;-><init>(IIII[IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Landroid/telephony/ClosedSubscriberGroupInfo;)V

    return-void
.end method

.method public constructor blacklist <init>(IIII[IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Landroid/telephony/ClosedSubscriberGroupInfo;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII[II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telephony/ClosedSubscriberGroupInfo;",
            ")V"
        }
    .end annotation

    sget-object v1, Landroid/telephony/CellIdentityLte;->TAG:Ljava/lang/String;

    const/4 v2, 0x3

    move-object v0, p0

    move-object v3, p7

    move-object v4, p8

    move-object/from16 v5, p9

    move-object/from16 v6, p10

    invoke-direct/range {v0 .. v6}, Landroid/telephony/CellIdentity;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const p7, 0xfffffff

    const/4 p8, 0x0

    invoke-static {p1, p8, p7}, Landroid/telephony/CellIdentityLte;->inRangeOrUnavailable(III)I

    move-result p1

    iput p1, p0, Landroid/telephony/CellIdentityLte;->mCi:I

    const/16 p1, 0x1f7

    invoke-static {p2, p8, p1}, Landroid/telephony/CellIdentityLte;->inRangeOrUnavailable(III)I

    move-result p1

    iput p1, p0, Landroid/telephony/CellIdentityLte;->mPci:I

    const p1, 0xffff

    invoke-static {p3, p8, p1}, Landroid/telephony/CellIdentityLte;->inRangeOrUnavailable(III)I

    move-result p1

    iput p1, p0, Landroid/telephony/CellIdentityLte;->mTac:I

    const p1, 0x3ffff

    invoke-static {p4, p8, p1}, Landroid/telephony/CellIdentityLte;->inRangeOrUnavailable(III)I

    move-result p1

    iput p1, p0, Landroid/telephony/CellIdentityLte;->mEarfcn:I

    iput-object p5, p0, Landroid/telephony/CellIdentityLte;->mBands:[I

    const/16 p1, 0x4e20

    invoke-static {p6, p8, p1}, Landroid/telephony/CellIdentityLte;->inRangeOrUnavailable(III)I

    move-result p1

    iput p1, p0, Landroid/telephony/CellIdentityLte;->mBandwidth:I

    new-instance p1, Landroid/util/ArraySet;

    invoke-interface/range {p11 .. p11}, Ljava/util/Collection;->size()I

    move-result p2

    invoke-direct {p1, p2}, Landroid/util/ArraySet;-><init>(I)V

    iput-object p1, p0, Landroid/telephony/CellIdentityLte;->mAdditionalPlmns:Landroid/util/ArraySet;

    invoke-interface/range {p11 .. p11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/telephony/CellIdentityLte;->isValidPlmn(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Landroid/telephony/CellIdentityLte;->mAdditionalPlmns:Landroid/util/ArraySet;

    invoke-virtual {p3, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object/from16 p2, p12

    iput-object p2, p0, Landroid/telephony/CellIdentityLte;->mCsgInfo:Landroid/telephony/ClosedSubscriberGroupInfo;

    invoke-virtual {p0}, Landroid/telephony/CellIdentityLte;->updateGlobalCellId()V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 2

    sget-object v0, Landroid/telephony/CellIdentityLte;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1, p1}, Landroid/telephony/CellIdentity;-><init>(Ljava/lang/String;ILandroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityLte;->mCi:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityLte;->mPci:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityLte;->mTac:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityLte;->mEarfcn:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CellIdentityLte;->mBands:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellIdentityLte;->mBandwidth:I

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArraySet(Ljava/lang/ClassLoader;)Landroid/util/ArraySet;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/CellIdentityLte;->mAdditionalPlmns:Landroid/util/ArraySet;

    const-class v1, Landroid/telephony/ClosedSubscriberGroupInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/ClosedSubscriberGroupInfo;

    iput-object p1, p0, Landroid/telephony/CellIdentityLte;->mCsgInfo:Landroid/telephony/ClosedSubscriberGroupInfo;

    invoke-virtual {p0}, Landroid/telephony/CellIdentityLte;->updateGlobalCellId()V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/telephony/CellIdentityLte;)V
    .locals 13

    iget v1, p1, Landroid/telephony/CellIdentityLte;->mCi:I

    iget v2, p1, Landroid/telephony/CellIdentityLte;->mPci:I

    iget v3, p1, Landroid/telephony/CellIdentityLte;->mTac:I

    iget v4, p1, Landroid/telephony/CellIdentityLte;->mEarfcn:I

    iget-object v5, p1, Landroid/telephony/CellIdentityLte;->mBands:[I

    iget v6, p1, Landroid/telephony/CellIdentityLte;->mBandwidth:I

    iget-object v7, p1, Landroid/telephony/CellIdentityLte;->mMccStr:Ljava/lang/String;

    iget-object v8, p1, Landroid/telephony/CellIdentityLte;->mMncStr:Ljava/lang/String;

    iget-object v9, p1, Landroid/telephony/CellIdentityLte;->mAlphaLong:Ljava/lang/String;

    iget-object v10, p1, Landroid/telephony/CellIdentityLte;->mAlphaShort:Ljava/lang/String;

    iget-object v11, p1, Landroid/telephony/CellIdentityLte;->mAdditionalPlmns:Landroid/util/ArraySet;

    iget-object v12, p1, Landroid/telephony/CellIdentityLte;->mCsgInfo:Landroid/telephony/ClosedSubscriberGroupInfo;

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Landroid/telephony/CellIdentityLte;-><init>(IIII[IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Landroid/telephony/ClosedSubscriberGroupInfo;)V

    return-void
.end method

.method protected static greylist-max-o createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/CellIdentityLte;
    .locals 1

    new-instance v0, Landroid/telephony/CellIdentityLte;

    invoke-direct {v0, p0}, Landroid/telephony/CellIdentityLte;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic whitelist asCellLocation()Landroid/telephony/CellLocation;
    .locals 0

    invoke-virtual {p0}, Landroid/telephony/CellIdentityLte;->asCellLocation()Landroid/telephony/gsm/GsmCellLocation;

    move-result-object p0

    return-object p0
.end method

.method public whitelist asCellLocation()Landroid/telephony/gsm/GsmCellLocation;
    .locals 4

    new-instance v0, Landroid/telephony/gsm/GsmCellLocation;

    invoke-direct {v0}, Landroid/telephony/gsm/GsmCellLocation;-><init>()V

    iget v1, p0, Landroid/telephony/CellIdentityLte;->mTac:I

    const/4 v2, -0x1

    const v3, 0x7fffffff

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget p0, p0, Landroid/telephony/CellIdentityLte;->mCi:I

    if-eq p0, v3, :cond_1

    move v2, p0

    :cond_1
    invoke-virtual {v0, v1, v2}, Landroid/telephony/gsm/GsmCellLocation;->setLacAndCid(II)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/telephony/gsm/GsmCellLocation;->setPsc(I)V

    return-object v0
.end method

.method greylist-max-o copy()Landroid/telephony/CellIdentityLte;
    .locals 1

    new-instance v0, Landroid/telephony/CellIdentityLte;

    invoke-direct {v0, p0}, Landroid/telephony/CellIdentityLte;-><init>(Landroid/telephony/CellIdentityLte;)V

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/telephony/CellIdentityLte;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/telephony/CellIdentityLte;

    iget v3, p0, Landroid/telephony/CellIdentityLte;->mCi:I

    iget v4, v1, Landroid/telephony/CellIdentityLte;->mCi:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/CellIdentityLte;->mPci:I

    iget v4, v1, Landroid/telephony/CellIdentityLte;->mPci:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/CellIdentityLte;->mTac:I

    iget v4, v1, Landroid/telephony/CellIdentityLte;->mTac:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/telephony/CellIdentityLte;->mEarfcn:I

    iget v4, v1, Landroid/telephony/CellIdentityLte;->mEarfcn:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/telephony/CellIdentityLte;->mBands:[I

    iget-object v4, v1, Landroid/telephony/CellIdentityLte;->mBands:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/telephony/CellIdentityLte;->mBandwidth:I

    iget v4, v1, Landroid/telephony/CellIdentityLte;->mBandwidth:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/telephony/CellIdentityLte;->mMccStr:Ljava/lang/String;

    iget-object v4, v1, Landroid/telephony/CellIdentityLte;->mMccStr:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/telephony/CellIdentityLte;->mMncStr:Ljava/lang/String;

    iget-object v4, v1, Landroid/telephony/CellIdentityLte;->mMncStr:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/telephony/CellIdentityLte;->mAdditionalPlmns:Landroid/util/ArraySet;

    iget-object v4, v1, Landroid/telephony/CellIdentityLte;->mAdditionalPlmns:Landroid/util/ArraySet;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/telephony/CellIdentityLte;->mCsgInfo:Landroid/telephony/ClosedSubscriberGroupInfo;

    iget-object v1, v1, Landroid/telephony/CellIdentityLte;->mCsgInfo:Landroid/telephony/ClosedSubscriberGroupInfo;

    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-super {p0, p1}, Landroid/telephony/CellIdentity;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public whitelist getAdditionalPlmns()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/telephony/CellIdentityLte;->mAdditionalPlmns:Landroid/util/ArraySet;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getBands()[I
    .locals 1

    iget-object p0, p0, Landroid/telephony/CellIdentityLte;->mBands:[I

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    return-object p0
.end method

.method public whitelist getBandwidth()I
    .locals 0

    iget p0, p0, Landroid/telephony/CellIdentityLte;->mBandwidth:I

    return p0
.end method

.method public greylist-max-o getChannelNumber()I
    .locals 0

    iget p0, p0, Landroid/telephony/CellIdentityLte;->mEarfcn:I

    return p0
.end method

.method public whitelist getCi()I
    .locals 0

    iget p0, p0, Landroid/telephony/CellIdentityLte;->mCi:I

    return p0
.end method

.method public whitelist getClosedSubscriberGroupInfo()Landroid/telephony/ClosedSubscriberGroupInfo;
    .locals 0

    iget-object p0, p0, Landroid/telephony/CellIdentityLte;->mCsgInfo:Landroid/telephony/ClosedSubscriberGroupInfo;

    return-object p0
.end method

.method public whitelist getEarfcn()I
    .locals 0

    iget p0, p0, Landroid/telephony/CellIdentityLte;->mEarfcn:I

    return p0
.end method

.method public whitelist getMcc()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/telephony/CellIdentityLte;->mMccStr:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/telephony/CellIdentityLte;->mMccStr:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const p0, 0x7fffffff

    return p0
.end method

.method public whitelist getMccString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/telephony/CellIdentityLte;->mMccStr:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getMnc()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/telephony/CellIdentityLte;->mMncStr:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/telephony/CellIdentityLte;->mMncStr:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const p0, 0x7fffffff

    return p0
.end method

.method public whitelist getMncString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/telephony/CellIdentityLte;->mMncStr:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getMobileNetworkOperator()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroid/telephony/CellIdentityLte;->mMccStr:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/telephony/CellIdentityLte;->mMncStr:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/telephony/CellIdentityLte;->mMccStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/telephony/CellIdentityLte;->mMncStr:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist getPci()I
    .locals 0

    iget p0, p0, Landroid/telephony/CellIdentityLte;->mPci:I

    return p0
.end method

.method public whitelist getTac()I
    .locals 0

    iget p0, p0, Landroid/telephony/CellIdentityLte;->mTac:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 10

    iget v0, p0, Landroid/telephony/CellIdentityLte;->mCi:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/telephony/CellIdentityLte;->mPci:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/telephony/CellIdentityLte;->mTac:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/telephony/CellIdentityLte;->mEarfcn:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v0, p0, Landroid/telephony/CellIdentityLte;->mBands:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Landroid/telephony/CellIdentityLte;->mBandwidth:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v0, p0, Landroid/telephony/CellIdentityLte;->mAdditionalPlmns:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p0, Landroid/telephony/CellIdentityLte;->mCsgInfo:Landroid/telephony/ClosedSubscriberGroupInfo;

    invoke-super {p0}, Landroid/telephony/CellIdentity;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array/range {v1 .. v9}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public blacklist isSameCell(Landroid/telephony/CellIdentity;)Z
    .locals 2

    invoke-super {p0, p1}, Landroid/telephony/CellIdentity;->isSameCell(Landroid/telephony/CellIdentity;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v1, p1, Landroid/telephony/CellIdentityLte;

    if-eqz v1, :cond_0

    iget p0, p0, Landroid/telephony/CellIdentityLte;->mTac:I

    check-cast p1, Landroid/telephony/CellIdentityLte;

    invoke-virtual {p1}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result p1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public bridge synthetic whitelist sanitizeLocationInfo()Landroid/telephony/CellIdentity;
    .locals 0

    invoke-virtual {p0}, Landroid/telephony/CellIdentityLte;->sanitizeLocationInfo()Landroid/telephony/CellIdentityLte;

    move-result-object p0

    return-object p0
.end method

.method public whitelist sanitizeLocationInfo()Landroid/telephony/CellIdentityLte;
    .locals 13

    new-instance v0, Landroid/telephony/CellIdentityLte;

    iget-object v5, p0, Landroid/telephony/CellIdentityLte;->mBands:[I

    iget-object v7, p0, Landroid/telephony/CellIdentityLte;->mMccStr:Ljava/lang/String;

    iget-object v8, p0, Landroid/telephony/CellIdentityLte;->mMncStr:Ljava/lang/String;

    iget-object v9, p0, Landroid/telephony/CellIdentityLte;->mAlphaLong:Ljava/lang/String;

    iget-object v10, p0, Landroid/telephony/CellIdentityLte;->mAlphaShort:Ljava/lang/String;

    iget-object v11, p0, Landroid/telephony/CellIdentityLte;->mAdditionalPlmns:Landroid/util/ArraySet;

    const/4 v12, 0x0

    const v1, 0x7fffffff

    const v2, 0x7fffffff

    const v3, 0x7fffffff

    const v4, 0x7fffffff

    const v6, 0x7fffffff

    invoke-direct/range {v0 .. v12}, Landroid/telephony/CellIdentityLte;-><init>(IIII[IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Landroid/telephony/ClosedSubscriberGroupInfo;)V

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Landroid/telephony/CellIdentityLte;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":{ mCi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellIdentityLte;->mCi:I

    invoke-static {v1}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPiiFromCellIdentity(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mPci="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellIdentityLte;->mPci:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mTac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellIdentityLte;->mTac:I

    invoke-static {v1}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPiiFromCellIdentity(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mEarfcn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellIdentityLte;->mEarfcn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mBands="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/CellIdentityLte;->mBands:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mBandwidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellIdentityLte;->mBandwidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mMcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/CellIdentityLte;->mMccStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mMnc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/CellIdentityLte;->mMncStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mAlphaLong="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/CellIdentityLte;->mAlphaLong:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mAlphaShort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/CellIdentityLte;->mAlphaShort:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mAdditionalPlmns="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/CellIdentityLte;->mAdditionalPlmns:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mCsgInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/telephony/CellIdentityLte;->mCsgInfo:Landroid/telephony/ClosedSubscriberGroupInfo;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist updateGlobalCellId()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/CellIdentityLte;->mGlobalCellId:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/telephony/CellIdentityLte;->getPlmn()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Landroid/telephony/CellIdentityLte;->mCi:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/telephony/CellIdentityLte;->mCi:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "%07x"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CellIdentityLte;->mGlobalCellId:Ljava/lang/String;

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const/4 v0, 0x3

    invoke-super {p0, p1, v0}, Landroid/telephony/CellIdentity;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/telephony/CellIdentityLte;->mCi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CellIdentityLte;->mPci:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CellIdentityLte;->mTac:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/CellIdentityLte;->mEarfcn:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/CellIdentityLte;->mBands:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget v0, p0, Landroid/telephony/CellIdentityLte;->mBandwidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/CellIdentityLte;->mAdditionalPlmns:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeArraySet(Landroid/util/ArraySet;)V

    iget-object p0, p0, Landroid/telephony/CellIdentityLte;->mCsgInfo:Landroid/telephony/ClosedSubscriberGroupInfo;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
