.class final Landroid/app/NotificationManager$NotificationChannelQuery;
.super Ljava/lang/Record;
.source "NotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/NotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NotificationChannelQuery"
.end annotation

.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {},
        {}
    }
    componentAnnotations = {
        {},
        {},
        {}
    }
    componentNames = {
        "callingPkg",
        "targetPkg",
        "userId"
    }
    componentSignatures = {
        null,
        null,
        null
    }
    componentTypes = {
        Ljava/lang/String;,
        Ljava/lang/String;,
        I
    }
.end annotation


# instance fields
.field private final blacklist callingPkg:Ljava/lang/String;

.field private final blacklist targetPkg:Ljava/lang/String;

.field private final blacklist userId:I


# direct methods
.method private synthetic blacklist $record$equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroid/app/NotificationManager$NotificationChannelQuery;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/app/NotificationManager$NotificationChannelQuery;

    iget v0, p0, Landroid/app/NotificationManager$NotificationChannelQuery;->userId:I

    iget v1, p1, Landroid/app/NotificationManager$NotificationChannelQuery;->userId:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/app/NotificationManager$NotificationChannelQuery;->callingPkg:Ljava/lang/String;

    iget-object v1, p1, Landroid/app/NotificationManager$NotificationChannelQuery;->callingPkg:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/app/NotificationManager$NotificationChannelQuery;->targetPkg:Ljava/lang/String;

    iget-object p1, p1, Landroid/app/NotificationManager$NotificationChannelQuery;->targetPkg:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic blacklist $record$getFieldsAsObjects()[Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroid/app/NotificationManager$NotificationChannelQuery;->callingPkg:Ljava/lang/String;

    iget-object v1, p0, Landroid/app/NotificationManager$NotificationChannelQuery;->targetPkg:Ljava/lang/String;

    iget p0, p0, Landroid/app/NotificationManager$NotificationChannelQuery;->userId:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetcallingPkg(Landroid/app/NotificationManager$NotificationChannelQuery;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/NotificationManager$NotificationChannelQuery;->callingPkg:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgettargetPkg(Landroid/app/NotificationManager$NotificationChannelQuery;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/NotificationManager$NotificationChannelQuery;->targetPkg:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetuserId(Landroid/app/NotificationManager$NotificationChannelQuery;)I
    .locals 0

    iget p0, p0, Landroid/app/NotificationManager$NotificationChannelQuery;->userId:I

    return p0
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "callingPkg",
            "targetPkg",
            "userId"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput-object p1, p0, Landroid/app/NotificationManager$NotificationChannelQuery;->callingPkg:Ljava/lang/String;

    iput-object p2, p0, Landroid/app/NotificationManager$NotificationChannelQuery;->targetPkg:Ljava/lang/String;

    iput p3, p0, Landroid/app/NotificationManager$NotificationChannelQuery;->userId:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;ILandroid/app/NotificationManager-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/app/NotificationManager$NotificationChannelQuery;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public blacklist callingPkg()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/NotificationManager$NotificationChannelQuery;->callingPkg:Ljava/lang/String;

    return-object p0
.end method

.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/NotificationManager$NotificationChannelQuery;->$record$equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final whitelist test-api hashCode()I
    .locals 2

    iget v0, p0, Landroid/app/NotificationManager$NotificationChannelQuery;->userId:I

    iget-object v1, p0, Landroid/app/NotificationManager$NotificationChannelQuery;->callingPkg:Ljava/lang/String;

    iget-object p0, p0, Landroid/app/NotificationManager$NotificationChannelQuery;->targetPkg:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Landroid/app/PropertyInvalidatedCache$Args$$ExternalSyntheticRecord0;->m(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public blacklist targetPkg()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/NotificationManager$NotificationChannelQuery;->targetPkg:Ljava/lang/String;

    return-object p0
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Landroid/app/NotificationManager$NotificationChannelQuery;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p0

    const-class v0, Landroid/app/NotificationManager$NotificationChannelQuery;

    const-string v1, "callingPkg;targetPkg;userId"

    invoke-static {p0, v0, v1}, Landroid/app/PropertyInvalidatedCache$Args$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist userId()I
    .locals 0

    iget p0, p0, Landroid/app/NotificationManager$NotificationChannelQuery;->userId:I

    return p0
.end method
