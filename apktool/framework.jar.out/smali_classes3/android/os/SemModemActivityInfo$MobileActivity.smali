.class public Landroid/os/SemModemActivityInfo$MobileActivity;
.super Ljava/lang/Object;
.source "SemModemActivityInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SemModemActivityInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MobileActivity"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/SemModemActivityInfo$MobileActivity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mRxBytes:J

.field private blacklist mRxTimeMs:I

.field private blacklist mTxBytes:J

.field private blacklist mTxTimeMs:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/SemModemActivityInfo$MobileActivity$1;

    invoke-direct {v0}, Landroid/os/SemModemActivityInfo$MobileActivity$1;-><init>()V

    sput-object v0, Landroid/os/SemModemActivityInfo$MobileActivity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [I

    iput-object p1, p0, Landroid/os/SemModemActivityInfo$MobileActivity;->mTxTimeMs:[I

    const/4 p1, 0x0

    iput p1, p0, Landroid/os/SemModemActivityInfo$MobileActivity;->mRxTimeMs:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/SemModemActivityInfo$MobileActivity;->mTxBytes:J

    iput-wide v0, p0, Landroid/os/SemModemActivityInfo$MobileActivity;->mRxBytes:J

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/os/SemModemActivityInfo$MobileActivity;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getRxBytes()J
    .locals 2

    iget-wide v0, p0, Landroid/os/SemModemActivityInfo$MobileActivity;->mRxBytes:J

    return-wide v0
.end method

.method public blacklist getRxTimeMillis()I
    .locals 0

    iget p0, p0, Landroid/os/SemModemActivityInfo$MobileActivity;->mRxTimeMs:I

    return p0
.end method

.method public blacklist getTxBytes()J
    .locals 2

    iget-wide v0, p0, Landroid/os/SemModemActivityInfo$MobileActivity;->mTxBytes:J

    return-wide v0
.end method

.method public blacklist getTxTimeLength()I
    .locals 0

    iget-object p0, p0, Landroid/os/SemModemActivityInfo$MobileActivity;->mTxTimeMs:[I

    array-length p0, p0

    return p0
.end method

.method public blacklist getTxTimeMillis()[I
    .locals 0

    iget-object p0, p0, Landroid/os/SemModemActivityInfo$MobileActivity;->mTxTimeMs:[I

    return-object p0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/os/SemModemActivityInfo$MobileActivity;->mTxTimeMs:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/SemModemActivityInfo$MobileActivity;->mRxTimeMs:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemModemActivityInfo$MobileActivity;->mTxBytes:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/SemModemActivityInfo$MobileActivity;->mRxBytes:J

    return-void
.end method

.method public blacklist setRxBytes(J)V
    .locals 0

    iput-wide p1, p0, Landroid/os/SemModemActivityInfo$MobileActivity;->mRxBytes:J

    return-void
.end method

.method public blacklist setRxTimeMillis(I)V
    .locals 0

    iput p1, p0, Landroid/os/SemModemActivityInfo$MobileActivity;->mRxTimeMs:I

    return-void
.end method

.method public blacklist setTxBytes(J)V
    .locals 0

    iput-wide p1, p0, Landroid/os/SemModemActivityInfo$MobileActivity;->mTxBytes:J

    return-void
.end method

.method public blacklist setTxTimeMillis([I)V
    .locals 0

    iput-object p1, p0, Landroid/os/SemModemActivityInfo$MobileActivity;->mTxTimeMs:[I

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MobileActivity{ txTimeMs[]="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/os/SemModemActivityInfo$MobileActivity;->mTxTimeMs:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " rxTimeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/os/SemModemActivityInfo$MobileActivity;->mRxTimeMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " txBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/os/SemModemActivityInfo$MobileActivity;->mTxBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " rxBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/os/SemModemActivityInfo$MobileActivity;->mRxBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Landroid/os/SemModemActivityInfo$MobileActivity;->mTxTimeMs:[I

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/os/SemModemActivityInfo$MobileActivity;->mTxTimeMs:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    iget p2, p0, Landroid/os/SemModemActivityInfo$MobileActivity;->mRxTimeMs:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/os/SemModemActivityInfo$MobileActivity;->mTxBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/SemModemActivityInfo$MobileActivity;->mRxBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
