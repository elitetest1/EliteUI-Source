.class public final Landroid/telephony/ims/feature/ConnectionFailureInfo;
.super Ljava/lang/Object;
.source "ConnectionFailureInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/feature/ConnectionFailureInfo$FailureReason;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/feature/ConnectionFailureInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist REASON_ACCESS_DENIED:I = 0x1

.field public static final whitelist REASON_NAS_FAILURE:I = 0x2

.field public static final whitelist REASON_NONE:I = 0x0

.field public static final whitelist REASON_NO_SERVICE:I = 0x7

.field public static final whitelist REASON_PDN_NOT_AVAILABLE:I = 0x8

.field public static final whitelist REASON_RACH_FAILURE:I = 0x3

.field public static final whitelist REASON_RF_BUSY:I = 0x9

.field public static final whitelist REASON_RLC_FAILURE:I = 0x4

.field public static final whitelist REASON_RRC_REJECT:I = 0x5

.field public static final whitelist REASON_RRC_TIMEOUT:I = 0x6

.field public static final whitelist REASON_UNSPECIFIED:I = 0xffff

.field private static final blacklist sReasonMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCauseCode:I

.field private final blacklist mReason:I

.field private final blacklist mWaitTimeMillis:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/telephony/ims/feature/ConnectionFailureInfo;->sReasonMap:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    const/4 v1, 0x1

    const-string v2, "ACCESS_DENIED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    const/4 v1, 0x2

    const-string v2, "NAS_FAILURE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    const/4 v1, 0x3

    const-string v2, "RACH_FAILURE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    const/4 v1, 0x4

    const-string v2, "RLC_FAILURE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    const/4 v1, 0x5

    const-string v2, "RRC_REJECT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    const/4 v1, 0x6

    const-string v2, "RRC_TIMEOUT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    const/4 v1, 0x7

    const-string v2, "NO_SERVICE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    const/16 v1, 0x8

    const-string v2, "PDN_NOT_AVAILABLE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    const/16 v1, 0x9

    const-string v2, "RF_BUSY"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    const v1, 0xffff

    const-string v2, "UNSPECIFIED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    new-instance v0, Landroid/telephony/ims/feature/ConnectionFailureInfo$1;

    invoke-direct {v0}, Landroid/telephony/ims/feature/ConnectionFailureInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/feature/ConnectionFailureInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/ims/feature/ConnectionFailureInfo;->mReason:I

    iput p2, p0, Landroid/telephony/ims/feature/ConnectionFailureInfo;->mCauseCode:I

    iput p3, p0, Landroid/telephony/ims/feature/ConnectionFailureInfo;->mWaitTimeMillis:I

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/feature/ConnectionFailureInfo;->mReason:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/feature/ConnectionFailureInfo;->mCauseCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/telephony/ims/feature/ConnectionFailureInfo;->mWaitTimeMillis:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/ims/feature/ConnectionFailureInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/feature/ConnectionFailureInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getCauseCode()I
    .locals 0

    iget p0, p0, Landroid/telephony/ims/feature/ConnectionFailureInfo;->mCauseCode:I

    return p0
.end method

.method public whitelist getReason()I
    .locals 0

    iget p0, p0, Landroid/telephony/ims/feature/ConnectionFailureInfo;->mReason:I

    return p0
.end method

.method public whitelist getWaitTimeMillis()I
    .locals 0

    iget p0, p0, Landroid/telephony/ims/feature/ConnectionFailureInfo;->mWaitTimeMillis:I

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    sget-object v0, Landroid/telephony/ims/feature/ConnectionFailureInfo;->sReasonMap:Landroid/util/SparseArray;

    iget v1, p0, Landroid/telephony/ims/feature/ConnectionFailureInfo;->mReason:I

    const-string v2, "UNKNOWN"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ConnectionFailureInfo :: {"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroid/telephony/ims/feature/ConnectionFailureInfo;->mReason:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/telephony/ims/feature/ConnectionFailureInfo;->mCauseCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/telephony/ims/feature/ConnectionFailureInfo;->mWaitTimeMillis:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/telephony/ims/feature/ConnectionFailureInfo;->mReason:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/telephony/ims/feature/ConnectionFailureInfo;->mCauseCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Landroid/telephony/ims/feature/ConnectionFailureInfo;->mWaitTimeMillis:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
