.class public final Landroid/telephony/satellite/SemSatSimAuthResultData;
.super Ljava/lang/Object;
.source "SemSatSimAuthResultData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/satellite/SemSatSimAuthResultData$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/satellite/SemSatSimAuthResultData;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "SemSatSimAuthResultData"

.field public static blacklist SIM_AUTH_MAC_FAILURE:I = 0x98

.field public static blacklist SIM_AUTH_NO_SIM:I = 0xff

.field public static blacklist SIM_AUTH_SUCCESSFUL:I = 0xdb

.field public static blacklist SIM_AUTH_SYNC_FAILURE:I = 0xdc


# instance fields
.field private blacklist mAuts:Ljava/lang/String;

.field private blacklist mAutsLen:I

.field private blacklist mCk:Ljava/lang/String;

.field private blacklist mCkLen:I

.field private blacklist mIk:Ljava/lang/String;

.field private blacklist mIkLen:I

.field private blacklist mKc:Ljava/lang/String;

.field private blacklist mKcLen:I

.field private blacklist mRes:Ljava/lang/String;

.field private blacklist mResLen:I

.field private blacklist mResult:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAuts(Landroid/telephony/satellite/SemSatSimAuthResultData;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mAuts:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAutsLen(Landroid/telephony/satellite/SemSatSimAuthResultData;)I
    .locals 0

    iget p0, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mAutsLen:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCk(Landroid/telephony/satellite/SemSatSimAuthResultData;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mCk:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCkLen(Landroid/telephony/satellite/SemSatSimAuthResultData;)I
    .locals 0

    iget p0, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mCkLen:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIk(Landroid/telephony/satellite/SemSatSimAuthResultData;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mIk:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIkLen(Landroid/telephony/satellite/SemSatSimAuthResultData;)I
    .locals 0

    iget p0, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mIkLen:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKc(Landroid/telephony/satellite/SemSatSimAuthResultData;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mKc:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKcLen(Landroid/telephony/satellite/SemSatSimAuthResultData;)I
    .locals 0

    iget p0, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mKcLen:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRes(Landroid/telephony/satellite/SemSatSimAuthResultData;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mRes:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmResLen(Landroid/telephony/satellite/SemSatSimAuthResultData;)I
    .locals 0

    iget p0, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mResLen:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmResult(Landroid/telephony/satellite/SemSatSimAuthResultData;)I
    .locals 0

    iget p0, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mResult:I

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SemSatSimAuthResultData$1;

    invoke-direct {v0}, Landroid/telephony/satellite/SemSatSimAuthResultData$1;-><init>()V

    sput-object v0, Landroid/telephony/satellite/SemSatSimAuthResultData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IILjava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mResult:I

    iput p2, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mResLen:I

    iput-object p3, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mRes:Ljava/lang/String;

    iput p4, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mCkLen:I

    iput-object p5, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mCk:Ljava/lang/String;

    iput p6, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mIkLen:I

    iput-object p7, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mIk:Ljava/lang/String;

    iput p8, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mKcLen:I

    iput-object p9, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mKc:Ljava/lang/String;

    iput p10, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mAutsLen:I

    iput-object p11, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mAuts:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mResult:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mResLen:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mRes:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mCkLen:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mCk:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mIkLen:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mIk:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mKcLen:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mKc:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mAutsLen:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mAuts:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/satellite/SemSatSimAuthResultData-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/satellite/SemSatSimAuthResultData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist byteArrayToHexString([B)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%02x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isValid()Z
    .locals 4

    iget v0, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mResult:I

    sget v1, Landroid/telephony/satellite/SemSatSimAuthResultData;->SIM_AUTH_SUCCESSFUL:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mResLen:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mCkLen:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mIkLen:I

    if-lez v0, :cond_0

    iget p0, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mKcLen:I

    if-lez p0, :cond_0

    return v2

    :cond_0
    return v3

    :cond_1
    sget v1, Landroid/telephony/satellite/SemSatSimAuthResultData;->SIM_AUTH_SYNC_FAILURE:I

    if-ne v0, v1, :cond_3

    iget p0, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mAutsLen:I

    if-lez p0, :cond_2

    return v2

    :cond_2
    return v3

    :cond_3
    sget p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->SIM_AUTH_MAC_FAILURE:I

    if-eq v0, p0, :cond_5

    sget p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->SIM_AUTH_NO_SIM:I

    if-ne v0, p0, :cond_4

    goto :goto_0

    :cond_4
    return v3

    :cond_5
    :goto_0
    return v2
.end method

.method public blacklist toSimAuthRespDataAidl()Lvendor/samsung/hardware/radio/satellite/SehSatSimAuthRespData;
    .locals 2

    new-instance v0, Lvendor/samsung/hardware/radio/satellite/SehSatSimAuthRespData;

    invoke-direct {v0}, Lvendor/samsung/hardware/radio/satellite/SehSatSimAuthRespData;-><init>()V

    iget v1, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mResult:I

    iput v1, v0, Lvendor/samsung/hardware/radio/satellite/SehSatSimAuthRespData;->result:I

    iget v1, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mResLen:I

    iput v1, v0, Lvendor/samsung/hardware/radio/satellite/SehSatSimAuthRespData;->resLen:I

    iget-object v1, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mRes:Ljava/lang/String;

    iput-object v1, v0, Lvendor/samsung/hardware/radio/satellite/SehSatSimAuthRespData;->res:Ljava/lang/String;

    iget v1, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mCkLen:I

    iput v1, v0, Lvendor/samsung/hardware/radio/satellite/SehSatSimAuthRespData;->ckLen:I

    iget-object v1, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mCk:Ljava/lang/String;

    iput-object v1, v0, Lvendor/samsung/hardware/radio/satellite/SehSatSimAuthRespData;->ck:Ljava/lang/String;

    iget v1, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mIkLen:I

    iput v1, v0, Lvendor/samsung/hardware/radio/satellite/SehSatSimAuthRespData;->ikLen:I

    iget-object v1, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mIk:Ljava/lang/String;

    iput-object v1, v0, Lvendor/samsung/hardware/radio/satellite/SehSatSimAuthRespData;->ik:Ljava/lang/String;

    iget v1, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mKcLen:I

    iput v1, v0, Lvendor/samsung/hardware/radio/satellite/SehSatSimAuthRespData;->kcLen:I

    iget-object v1, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mKc:Ljava/lang/String;

    iput-object v1, v0, Lvendor/samsung/hardware/radio/satellite/SehSatSimAuthRespData;->kc:Ljava/lang/String;

    iget v1, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mAutsLen:I

    iput v1, v0, Lvendor/samsung/hardware/radio/satellite/SehSatSimAuthRespData;->autsLen:I

    iget-object p0, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mAuts:Ljava/lang/String;

    iput-object p0, v0, Lvendor/samsung/hardware/radio/satellite/SehSatSimAuthRespData;->auts:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    sget-boolean v0, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SemSatSimAuthResultData result: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mResult:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " reslen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mResLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " res: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mRes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cklen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mCkLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ck: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mCk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " iklen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mIkLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ik: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mIk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " kclen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mKcLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " kc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mKc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " autslen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mAutsLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " auts: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mAuts:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "SemSatSimAuthResultData"

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mResult:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mResLen:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mRes:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mCkLen:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mCk:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mIkLen:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mIk:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mKcLen:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mKc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mAutsLen:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Landroid/telephony/satellite/SemSatSimAuthResultData;->mAuts:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
