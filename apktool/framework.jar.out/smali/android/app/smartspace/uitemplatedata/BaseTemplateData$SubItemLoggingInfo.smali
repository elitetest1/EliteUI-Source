.class public final Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;
.super Ljava/lang/Object;
.source "BaseTemplateData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/smartspace/uitemplatedata/BaseTemplateData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SubItemLoggingInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mFeatureType:I

.field private final blacklist mInstanceId:I

.field private final blacklist mPackageName:Ljava/lang/CharSequence;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo$1;

    invoke-direct {v0}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo$1;-><init>()V

    sput-object v0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(IILjava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;->mInstanceId:I

    iput p2, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;->mFeatureType:I

    iput-object p3, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;->mPackageName:Ljava/lang/CharSequence;

    return-void
.end method

.method synthetic constructor blacklist <init>(IILjava/lang/CharSequence;Landroid/app/smartspace/uitemplatedata/BaseTemplateData-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;-><init>(IILjava/lang/CharSequence;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;->mInstanceId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;->mFeatureType:I

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    iput-object p1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;->mPackageName:Ljava/lang/CharSequence;

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
    instance-of v1, p1, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;

    iget v1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;->mInstanceId:I

    iget v3, p1, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;->mInstanceId:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;->mFeatureType:I

    iget v3, p1, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;->mFeatureType:I

    if-ne v1, v3, :cond_2

    iget-object p0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;->mPackageName:Ljava/lang/CharSequence;

    iget-object p1, p1, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;->mPackageName:Ljava/lang/CharSequence;

    invoke-static {p0, p1}, Landroid/app/smartspace/SmartspaceUtils;->isEqual(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public whitelist getFeatureType()I
    .locals 0

    iget p0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;->mFeatureType:I

    return p0
.end method

.method public whitelist getInstanceId()I
    .locals 0

    iget p0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;->mInstanceId:I

    return p0
.end method

.method public whitelist getPackageName()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;->mPackageName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;->mInstanceId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;->mFeatureType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;->mPackageName:Ljava/lang/CharSequence;

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SubItemLoggingInfo{mInstanceId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;->mInstanceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFeatureType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;->mFeatureType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;->mPackageName:Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;->mInstanceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;->mFeatureType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Landroid/app/smartspace/uitemplatedata/BaseTemplateData$SubItemLoggingInfo;->mPackageName:Ljava/lang/CharSequence;

    invoke-static {p0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    return-void
.end method
