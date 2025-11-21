.class public final Landroid/app/smartspace/uitemplatedata/Text;
.super Ljava/lang/Object;
.source "Text.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/smartspace/uitemplatedata/Text$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/smartspace/uitemplatedata/Text;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mMaxLines:I

.field private final blacklist mText:Ljava/lang/CharSequence;

.field private final blacklist mTruncateAtType:Landroid/text/TextUtils$TruncateAt;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/smartspace/uitemplatedata/Text$1;

    invoke-direct {v0}, Landroid/app/smartspace/uitemplatedata/Text$1;-><init>()V

    sput-object v0, Landroid/app/smartspace/uitemplatedata/Text;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/smartspace/uitemplatedata/Text;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils$TruncateAt;->valueOf(Ljava/lang/String;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    iput-object v0, p0, Landroid/app/smartspace/uitemplatedata/Text;->mTruncateAtType:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/app/smartspace/uitemplatedata/Text;->mMaxLines:I

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/CharSequence;Landroid/text/TextUtils$TruncateAt;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/smartspace/uitemplatedata/Text;->mText:Ljava/lang/CharSequence;

    iput-object p2, p0, Landroid/app/smartspace/uitemplatedata/Text;->mTruncateAtType:Landroid/text/TextUtils$TruncateAt;

    iput p3, p0, Landroid/app/smartspace/uitemplatedata/Text;->mMaxLines:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/CharSequence;Landroid/text/TextUtils$TruncateAt;ILandroid/app/smartspace/uitemplatedata/Text-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/app/smartspace/uitemplatedata/Text;-><init>(Ljava/lang/CharSequence;Landroid/text/TextUtils$TruncateAt;I)V

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
    instance-of v1, p1, Landroid/app/smartspace/uitemplatedata/Text;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroid/app/smartspace/uitemplatedata/Text;

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/Text;->mTruncateAtType:Landroid/text/TextUtils$TruncateAt;

    iget-object v3, p1, Landroid/app/smartspace/uitemplatedata/Text;->mTruncateAtType:Landroid/text/TextUtils$TruncateAt;

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/Text;->mText:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/app/smartspace/uitemplatedata/Text;->mText:Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Landroid/app/smartspace/SmartspaceUtils;->isEqual(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget p0, p0, Landroid/app/smartspace/uitemplatedata/Text;->mMaxLines:I

    iget p1, p1, Landroid/app/smartspace/uitemplatedata/Text;->mMaxLines:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public whitelist getMaxLines()I
    .locals 0

    iget p0, p0, Landroid/app/smartspace/uitemplatedata/Text;->mMaxLines:I

    return p0
.end method

.method public whitelist getText()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/app/smartspace/uitemplatedata/Text;->mText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public whitelist getTruncateAtType()Landroid/text/TextUtils$TruncateAt;
    .locals 0

    iget-object p0, p0, Landroid/app/smartspace/uitemplatedata/Text;->mTruncateAtType:Landroid/text/TextUtils$TruncateAt;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/Text;->mText:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/Text;->mTruncateAtType:Landroid/text/TextUtils$TruncateAt;

    iget p0, p0, Landroid/app/smartspace/uitemplatedata/Text;->mMaxLines:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Text{mText="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/Text;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mTruncateAtType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/Text;->mTruncateAtType:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mMaxLines="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/app/smartspace/uitemplatedata/Text;->mMaxLines:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/app/smartspace/uitemplatedata/Text;->mText:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget-object p2, p0, Landroid/app/smartspace/uitemplatedata/Text;->mTruncateAtType:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p2}, Landroid/text/TextUtils$TruncateAt;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p0, p0, Landroid/app/smartspace/uitemplatedata/Text;->mMaxLines:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
