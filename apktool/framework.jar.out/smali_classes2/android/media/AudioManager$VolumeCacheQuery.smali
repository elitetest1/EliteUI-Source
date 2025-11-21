.class final Landroid/media/AudioManager$VolumeCacheQuery;
.super Ljava/lang/Record;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VolumeCacheQuery"
.end annotation

.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {}
    }
    componentAnnotations = {
        {},
        {}
    }
    componentNames = {
        "stream",
        "queryCommand"
    }
    componentSignatures = {
        null,
        null
    }
    componentTypes = {
        I,
        I
    }
.end annotation


# instance fields
.field private final blacklist queryCommand:I

.field private final blacklist stream:I


# direct methods
.method private synthetic blacklist $record$equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroid/media/AudioManager$VolumeCacheQuery;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/media/AudioManager$VolumeCacheQuery;

    iget v0, p0, Landroid/media/AudioManager$VolumeCacheQuery;->stream:I

    iget v1, p1, Landroid/media/AudioManager$VolumeCacheQuery;->stream:I

    if-ne v0, v1, :cond_0

    iget p0, p0, Landroid/media/AudioManager$VolumeCacheQuery;->queryCommand:I

    iget p1, p1, Landroid/media/AudioManager$VolumeCacheQuery;->queryCommand:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetqueryCommand(Landroid/media/AudioManager$VolumeCacheQuery;)I
    .locals 0

    iget p0, p0, Landroid/media/AudioManager$VolumeCacheQuery;->queryCommand:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetstream(Landroid/media/AudioManager$VolumeCacheQuery;)I
    .locals 0

    iget p0, p0, Landroid/media/AudioManager$VolumeCacheQuery;->stream:I

    return p0
.end method

.method private constructor blacklist <init>(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stream",
            "queryCommand"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput p1, p0, Landroid/media/AudioManager$VolumeCacheQuery;->stream:I

    iput p2, p0, Landroid/media/AudioManager$VolumeCacheQuery;->queryCommand:I

    return-void
.end method

.method synthetic constructor blacklist <init>(IILandroid/media/AudioManager-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/media/AudioManager$VolumeCacheQuery;-><init>(II)V

    return-void
.end method

.method private blacklist queryVolCommandToString()Ljava/lang/String;
    .locals 1

    iget p0, p0, Landroid/media/AudioManager$VolumeCacheQuery;->queryCommand:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "invalid command"

    return-object p0

    :cond_0
    const-string p0, "getStreamVolume"

    return-object p0

    :cond_1
    const-string p0, "getStreamMaxVolume"

    return-object p0

    :cond_2
    const-string p0, "getStreamMinVolume"

    return-object p0
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/AudioManager$VolumeCacheQuery;->$record$equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final whitelist test-api hashCode()I
    .locals 1

    iget v0, p0, Landroid/media/AudioManager$VolumeCacheQuery;->stream:I

    iget p0, p0, Landroid/media/AudioManager$VolumeCacheQuery;->queryCommand:I

    invoke-static {v0, p0}, Landroid/app/PropertyInvalidatedCache$Args$$ExternalSyntheticRecord0;->m(II)I

    move-result p0

    return p0
.end method

.method public blacklist queryCommand()I
    .locals 0

    iget p0, p0, Landroid/media/AudioManager$VolumeCacheQuery;->queryCommand:I

    return p0
.end method

.method public blacklist stream()I
    .locals 0

    iget p0, p0, Landroid/media/AudioManager$VolumeCacheQuery;->stream:I

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Landroid/media/AudioManager$VolumeCacheQuery;->stream:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0}, Landroid/media/AudioManager$VolumeCacheQuery;->queryVolCommandToString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "VolumeCacheQuery(stream=%d, queryCommand=%s)"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
