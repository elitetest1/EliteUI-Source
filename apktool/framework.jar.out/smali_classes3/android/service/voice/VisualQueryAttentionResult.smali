.class public final Landroid/service/voice/VisualQueryAttentionResult;
.super Ljava/lang/Object;
.source "VisualQueryAttentionResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/VisualQueryAttentionResult$Builder;,
        Landroid/service/voice/VisualQueryAttentionResult$InteractionIntention;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/voice/VisualQueryAttentionResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist INTERACTION_INTENTION_AUDIO_VISUAL:I = 0x0

.field public static final whitelist INTERACTION_INTENTION_VISUAL_ACCESSIBILITY:I = 0x1


# instance fields
.field private final blacklist mEngagementLevel:I

.field private final blacklist mInteractionIntention:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smdefaultEngagementLevel()I
    .locals 1

    invoke-static {}, Landroid/service/voice/VisualQueryAttentionResult;->defaultEngagementLevel()I

    move-result v0

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultInteractionIntention()I
    .locals 1

    invoke-static {}, Landroid/service/voice/VisualQueryAttentionResult;->defaultInteractionIntention()I

    move-result v0

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/voice/VisualQueryAttentionResult$1;

    invoke-direct {v0}, Landroid/service/voice/VisualQueryAttentionResult$1;-><init>()V

    sput-object v0, Landroid/service/voice/VisualQueryAttentionResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(II)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/service/voice/VisualQueryAttentionResult;->mInteractionIntention:I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "interactionIntention was "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " but must be one of: INTERACTION_INTENTION_AUDIO_VISUAL(0), INTERACTION_INTENTION_VISUAL_ACCESSIBILITY(1)"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput p2, p0, Landroid/service/voice/VisualQueryAttentionResult;->mEngagementLevel:I

    const-class v0, Landroid/annotation/IntRange;

    const-string/jumbo v6, "to"

    const-wide/16 v7, 0x64

    const/4 v1, 0x0

    const-string v3, "from"

    const-wide/16 v4, 0x1

    move v2, p2

    invoke-static/range {v0 .. v8}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;JLjava/lang/String;J)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v0, p0, Landroid/service/voice/VisualQueryAttentionResult;->mInteractionIntention:I

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "interactionIntention was "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " but must be one of: INTERACTION_INTENTION_AUDIO_VISUAL(0), INTERACTION_INTENTION_VISUAL_ACCESSIBILITY(1)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput v3, p0, Landroid/service/voice/VisualQueryAttentionResult;->mEngagementLevel:I

    const-class v1, Landroid/annotation/IntRange;

    const-string/jumbo v7, "to"

    const-wide/16 v8, 0x64

    const/4 v2, 0x0

    const-string v4, "from"

    const-wide/16 v5, 0x1

    invoke-static/range {v1 .. v9}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;JLjava/lang/String;J)V

    return-void
.end method

.method private blacklist __metadata()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method private static blacklist defaultEngagementLevel()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method private static blacklist defaultInteractionIntention()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist interactionIntentionToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "INTERACTION_INTENTION_VISUAL_ACCESSIBILITY"

    return-object p0

    :cond_1
    const-string p0, "INTERACTION_INTENTION_AUDIO_VISUAL"

    return-object p0
.end method


# virtual methods
.method public blacklist buildUpon()Landroid/service/voice/VisualQueryAttentionResult$Builder;
    .locals 2

    new-instance v0, Landroid/service/voice/VisualQueryAttentionResult$Builder;

    invoke-direct {v0}, Landroid/service/voice/VisualQueryAttentionResult$Builder;-><init>()V

    iget v1, p0, Landroid/service/voice/VisualQueryAttentionResult;->mInteractionIntention:I

    invoke-virtual {v0, v1}, Landroid/service/voice/VisualQueryAttentionResult$Builder;->setInteractionIntention(I)Landroid/service/voice/VisualQueryAttentionResult$Builder;

    move-result-object v0

    iget p0, p0, Landroid/service/voice/VisualQueryAttentionResult;->mEngagementLevel:I

    invoke-virtual {v0, p0}, Landroid/service/voice/VisualQueryAttentionResult$Builder;->setEngagementLevel(I)Landroid/service/voice/VisualQueryAttentionResult$Builder;

    move-result-object p0

    return-object p0
.end method

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
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroid/service/voice/VisualQueryAttentionResult;

    iget v2, p0, Landroid/service/voice/VisualQueryAttentionResult;->mInteractionIntention:I

    iget v3, p1, Landroid/service/voice/VisualQueryAttentionResult;->mInteractionIntention:I

    if-ne v2, v3, :cond_2

    iget p0, p0, Landroid/service/voice/VisualQueryAttentionResult;->mEngagementLevel:I

    iget p1, p1, Landroid/service/voice/VisualQueryAttentionResult;->mEngagementLevel:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public whitelist getEngagementLevel()I
    .locals 0

    iget p0, p0, Landroid/service/voice/VisualQueryAttentionResult;->mEngagementLevel:I

    return p0
.end method

.method public whitelist getInteractionIntention()I
    .locals 0

    iget p0, p0, Landroid/service/voice/VisualQueryAttentionResult;->mInteractionIntention:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget v0, p0, Landroid/service/voice/VisualQueryAttentionResult;->mInteractionIntention:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget p0, p0, Landroid/service/voice/VisualQueryAttentionResult;->mEngagementLevel:I

    add-int/2addr v0, p0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VisualQueryAttentionResult { interactionIntention = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/service/voice/VisualQueryAttentionResult;->mInteractionIntention:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", engagementLevel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/service/voice/VisualQueryAttentionResult;->mEngagementLevel:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/service/voice/VisualQueryAttentionResult;->mInteractionIntention:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Landroid/service/voice/VisualQueryAttentionResult;->mEngagementLevel:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
