.class public Landroid/telephony/cdma/CdmaSmsCbProgramResults;
.super Ljava/lang/Object;
.source "CdmaSmsCbProgramResults.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/cdma/CdmaSmsCbProgramResults;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o RESULT_CATEGORY_ALREADY_ADDED:I = 0x3

.field public static final greylist-max-o RESULT_CATEGORY_ALREADY_DELETED:I = 0x4

.field public static final greylist-max-o RESULT_CATEGORY_LIMIT_EXCEEDED:I = 0x2

.field public static final greylist-max-o RESULT_INVALID_ALERT_OPTION:I = 0x6

.field public static final greylist-max-o RESULT_INVALID_CATEGORY_NAME:I = 0x7

.field public static final greylist-max-o RESULT_INVALID_MAX_MESSAGES:I = 0x5

.field public static final greylist-max-o RESULT_MEMORY_LIMIT_EXCEEDED:I = 0x1

.field public static final greylist-max-o RESULT_SUCCESS:I = 0x0

.field public static final greylist-max-o RESULT_UNSPECIFIED_FAILURE:I = 0x8


# instance fields
.field private final greylist-max-o mCategory:I

.field private final greylist-max-o mCategoryResult:I

.field private final greylist-max-o mLanguage:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/cdma/CdmaSmsCbProgramResults$1;

    invoke-direct {v0}, Landroid/telephony/cdma/CdmaSmsCbProgramResults$1;-><init>()V

    sput-object v0, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->mCategory:I

    iput p2, p0, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->mLanguage:I

    iput p3, p0, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->mCategoryResult:I

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->mCategory:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->mLanguage:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->mCategoryResult:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist-max-o getCategory()I
    .locals 0

    iget p0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->mCategory:I

    return p0
.end method

.method public greylist-max-o getCategoryResult()I
    .locals 0

    iget p0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->mCategoryResult:I

    return p0
.end method

.method public greylist-max-o getLanguage()I
    .locals 0

    iget p0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->mLanguage:I

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CdmaSmsCbProgramResults{category="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->mCategory:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->mLanguage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->mCategoryResult:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->mCategory:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->mLanguage:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Landroid/telephony/cdma/CdmaSmsCbProgramResults;->mCategoryResult:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
