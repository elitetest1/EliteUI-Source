.class public final Landroid/hardware/radio/RadioAlert$AlertInfo;
.super Ljava/lang/Object;
.source "RadioAlert.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/RadioAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlertInfo"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/radio/RadioAlert$AlertInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAreaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioAlert$AlertArea;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCategories:[I

.field private final blacklist mCertainty:I

.field private final blacklist mLanguage:Ljava/lang/String;

.field private final blacklist mSeverity:I

.field private final blacklist mTextualMessage:Ljava/lang/String;

.field private final blacklist mUrgency:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/radio/RadioAlert$AlertInfo$1;

    invoke-direct {v0}, Landroid/hardware/radio/RadioAlert$AlertInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/RadioAlert$AlertInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mCategories:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mUrgency:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mSeverity:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mCertainty:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mTextualMessage:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mAreaList:Ljava/util/List;

    sget-object v1, Landroid/hardware/radio/RadioAlert$AlertArea;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mLanguage:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mLanguage:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/radio/RadioAlert-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/radio/RadioAlert$AlertInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>([IIIILjava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([IIII",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioAlert$AlertArea;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Categories can not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    iput-object p1, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mCategories:[I

    iput p2, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mUrgency:I

    iput p3, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mSeverity:I

    iput p4, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mCertainty:I

    iput-object p5, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mTextualMessage:Ljava/lang/String;

    const-string p1, "Area list can not be null"

    invoke-static {p6, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mAreaList:Ljava/util/List;

    iput-object p7, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mLanguage:Ljava/lang/String;

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
    instance-of v1, p1, Landroid/hardware/radio/RadioAlert$AlertInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Landroid/hardware/radio/RadioAlert$AlertInfo;

    iget-object v1, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mCategories:[I

    iget-object v3, p1, Landroid/hardware/radio/RadioAlert$AlertInfo;->mCategories:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mUrgency:I

    iget v3, p1, Landroid/hardware/radio/RadioAlert$AlertInfo;->mUrgency:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mSeverity:I

    iget v3, p1, Landroid/hardware/radio/RadioAlert$AlertInfo;->mSeverity:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mCertainty:I

    iget v3, p1, Landroid/hardware/radio/RadioAlert$AlertInfo;->mCertainty:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mTextualMessage:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/radio/RadioAlert$AlertInfo;->mTextualMessage:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mAreaList:Ljava/util/List;

    iget-object v3, p1, Landroid/hardware/radio/RadioAlert$AlertInfo;->mAreaList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mLanguage:Ljava/lang/String;

    iget-object p1, p1, Landroid/hardware/radio/RadioAlert$AlertInfo;->mLanguage:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public whitelist getAreas()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioAlert$AlertArea;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mAreaList:Ljava/util/List;

    return-object p0
.end method

.method public whitelist getCategories()[I
    .locals 0

    iget-object p0, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mCategories:[I

    return-object p0
.end method

.method public whitelist getCertainty()I
    .locals 0

    iget p0, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mCertainty:I

    return p0
.end method

.method public whitelist getDescription()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mTextualMessage:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getSeverity()I
    .locals 0

    iget p0, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mSeverity:I

    return p0
.end method

.method public whitelist getUrgency()I
    .locals 0

    iget p0, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mUrgency:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 8

    iget-object v0, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mCategories:[I

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mUrgency:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mSeverity:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mCertainty:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mTextualMessage:Ljava/lang/String;

    iget-object v6, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mAreaList:Ljava/util/List;

    iget-object v7, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mLanguage:Ljava/lang/String;

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AlertInfo [categories="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mCategories:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", urgency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mUrgency:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", severity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mSeverity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", certainty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mCertainty:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", textualMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mTextualMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", areaList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mAreaList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mCategories:[I

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mCategories:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    iget p2, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mUrgency:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mSeverity:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mCertainty:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mTextualMessage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mAreaList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object p2, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mLanguage:Ljava/lang/String;

    if-nez p2, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void

    :cond_0
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object p0, p0, Landroid/hardware/radio/RadioAlert$AlertInfo;->mLanguage:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    return-void
.end method
