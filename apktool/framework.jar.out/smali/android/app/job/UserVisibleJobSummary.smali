.class public Landroid/app/job/UserVisibleJobSummary;
.super Ljava/lang/Object;
.source "UserVisibleJobSummary.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/job/UserVisibleJobSummary;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCallingPackageName:Ljava/lang/String;

.field private final blacklist mCallingUid:I

.field private final blacklist mJobId:I

.field private final blacklist mNamespace:Ljava/lang/String;

.field private final blacklist mSourcePackageName:Ljava/lang/String;

.field private final blacklist mSourceUserId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/job/UserVisibleJobSummary$1;

    invoke-direct {v0}, Landroid/app/job/UserVisibleJobSummary$1;-><init>()V

    sput-object v0, Landroid/app/job/UserVisibleJobSummary;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/job/UserVisibleJobSummary;->mCallingUid:I

    iput-object p2, p0, Landroid/app/job/UserVisibleJobSummary;->mCallingPackageName:Ljava/lang/String;

    iput p3, p0, Landroid/app/job/UserVisibleJobSummary;->mSourceUserId:I

    iput-object p4, p0, Landroid/app/job/UserVisibleJobSummary;->mSourcePackageName:Ljava/lang/String;

    iput-object p5, p0, Landroid/app/job/UserVisibleJobSummary;->mNamespace:Ljava/lang/String;

    iput p6, p0, Landroid/app/job/UserVisibleJobSummary;->mJobId:I

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/job/UserVisibleJobSummary;->mCallingUid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/UserVisibleJobSummary;->mCallingPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/job/UserVisibleJobSummary;->mSourceUserId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/UserVisibleJobSummary;->mSourcePackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/job/UserVisibleJobSummary;->mNamespace:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/app/job/UserVisibleJobSummary;->mJobId:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/app/job/UserVisibleJobSummary;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroid/app/job/UserVisibleJobSummary;

    iget v1, p0, Landroid/app/job/UserVisibleJobSummary;->mCallingUid:I

    iget v3, p1, Landroid/app/job/UserVisibleJobSummary;->mCallingUid:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Landroid/app/job/UserVisibleJobSummary;->mCallingPackageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/app/job/UserVisibleJobSummary;->mCallingPackageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/app/job/UserVisibleJobSummary;->mSourceUserId:I

    iget v3, p1, Landroid/app/job/UserVisibleJobSummary;->mSourceUserId:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Landroid/app/job/UserVisibleJobSummary;->mSourcePackageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/app/job/UserVisibleJobSummary;->mSourcePackageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/app/job/UserVisibleJobSummary;->mNamespace:Ljava/lang/String;

    iget-object v3, p1, Landroid/app/job/UserVisibleJobSummary;->mNamespace:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget p0, p0, Landroid/app/job/UserVisibleJobSummary;->mJobId:I

    iget p1, p1, Landroid/app/job/UserVisibleJobSummary;->mJobId:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public blacklist getCallingPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/job/UserVisibleJobSummary;->mCallingPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getCallingUid()I
    .locals 0

    iget p0, p0, Landroid/app/job/UserVisibleJobSummary;->mCallingUid:I

    return p0
.end method

.method public blacklist getJobId()I
    .locals 0

    iget p0, p0, Landroid/app/job/UserVisibleJobSummary;->mJobId:I

    return p0
.end method

.method public blacklist getNamespace()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/job/UserVisibleJobSummary;->mNamespace:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getSourcePackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/job/UserVisibleJobSummary;->mSourcePackageName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getSourceUserId()I
    .locals 0

    iget p0, p0, Landroid/app/job/UserVisibleJobSummary;->mSourceUserId:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget v0, p0, Landroid/app/job/UserVisibleJobSummary;->mCallingUid:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/app/job/UserVisibleJobSummary;->mCallingPackageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/app/job/UserVisibleJobSummary;->mSourceUserId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/app/job/UserVisibleJobSummary;->mSourcePackageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/app/job/UserVisibleJobSummary;->mNamespace:Ljava/lang/String;

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Landroid/app/job/UserVisibleJobSummary;->mJobId:I

    add-int/2addr v0, p0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UserVisibleJobSummary{callingUid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/app/job/UserVisibleJobSummary;->mCallingUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", callingPackageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/job/UserVisibleJobSummary;->mCallingPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', sourceUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/job/UserVisibleJobSummary;->mSourceUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sourcePackageName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/job/UserVisibleJobSummary;->mSourcePackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', namespace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/job/UserVisibleJobSummary;->mNamespace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", jobId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/app/job/UserVisibleJobSummary;->mJobId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/app/job/UserVisibleJobSummary;->mCallingUid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/app/job/UserVisibleJobSummary;->mCallingPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Landroid/app/job/UserVisibleJobSummary;->mSourceUserId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/app/job/UserVisibleJobSummary;->mSourcePackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/app/job/UserVisibleJobSummary;->mNamespace:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p0, p0, Landroid/app/job/UserVisibleJobSummary;->mJobId:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
