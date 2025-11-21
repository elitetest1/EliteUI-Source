.class final Landroid/app/NotificationManager$NotificationKey;
.super Ljava/lang/Record;
.source "NotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/NotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NotificationKey"
.end annotation

.annotation system Ldalvik/annotation/Record;
    componentAnnotationVisibilities = {
        {},
        {},
        {},
        {}
    }
    componentAnnotations = {
        {},
        {},
        {},
        {}
    }
    componentNames = {
        "user",
        "pkg",
        "tag",
        "id"
    }
    componentSignatures = {
        null,
        null,
        null,
        null
    }
    componentTypes = {
        Landroid/os/UserHandle;,
        Ljava/lang/String;,
        Ljava/lang/String;,
        I
    }
.end annotation


# instance fields
.field private final blacklist id:I

.field private final blacklist pkg:Ljava/lang/String;

.field private final blacklist tag:Ljava/lang/String;

.field private final blacklist user:Landroid/os/UserHandle;


# direct methods
.method private synthetic blacklist $record$equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroid/app/NotificationManager$NotificationKey;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/app/NotificationManager$NotificationKey;

    iget v0, p0, Landroid/app/NotificationManager$NotificationKey;->id:I

    iget v1, p1, Landroid/app/NotificationManager$NotificationKey;->id:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/app/NotificationManager$NotificationKey;->user:Landroid/os/UserHandle;

    iget-object v1, p1, Landroid/app/NotificationManager$NotificationKey;->user:Landroid/os/UserHandle;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/NotificationManager$NotificationKey;->pkg:Ljava/lang/String;

    iget-object v1, p1, Landroid/app/NotificationManager$NotificationKey;->pkg:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/app/NotificationManager$NotificationKey;->tag:Ljava/lang/String;

    iget-object p1, p1, Landroid/app/NotificationManager$NotificationKey;->tag:Ljava/lang/String;

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
    .locals 3

    iget-object v0, p0, Landroid/app/NotificationManager$NotificationKey;->user:Landroid/os/UserHandle;

    iget-object v1, p0, Landroid/app/NotificationManager$NotificationKey;->pkg:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/NotificationManager$NotificationKey;->tag:Ljava/lang/String;

    iget p0, p0, Landroid/app/NotificationManager$NotificationKey;->id:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetpkg(Landroid/app/NotificationManager$NotificationKey;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/NotificationManager$NotificationKey;->pkg:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetuser(Landroid/app/NotificationManager$NotificationKey;)Landroid/os/UserHandle;
    .locals 0

    iget-object p0, p0, Landroid/app/NotificationManager$NotificationKey;->user:Landroid/os/UserHandle;

    return-object p0
.end method

.method private constructor blacklist <init>(Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "user",
            "pkg",
            "tag",
            "id"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Record;-><init>()V

    iput-object p1, p0, Landroid/app/NotificationManager$NotificationKey;->user:Landroid/os/UserHandle;

    iput-object p2, p0, Landroid/app/NotificationManager$NotificationKey;->pkg:Ljava/lang/String;

    iput-object p3, p0, Landroid/app/NotificationManager$NotificationKey;->tag:Ljava/lang/String;

    iput p4, p0, Landroid/app/NotificationManager$NotificationKey;->id:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;ILandroid/app/NotificationManager-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/app/NotificationManager$NotificationKey;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/NotificationManager$NotificationKey;->$record$equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final whitelist test-api hashCode()I
    .locals 3

    iget v0, p0, Landroid/app/NotificationManager$NotificationKey;->id:I

    iget-object v1, p0, Landroid/app/NotificationManager$NotificationKey;->user:Landroid/os/UserHandle;

    iget-object v2, p0, Landroid/app/NotificationManager$NotificationKey;->pkg:Ljava/lang/String;

    iget-object p0, p0, Landroid/app/NotificationManager$NotificationKey;->tag:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Landroid/app/PropertyInvalidatedCache$Args$$ExternalSyntheticRecord0;->m(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public blacklist id()I
    .locals 0

    iget p0, p0, Landroid/app/NotificationManager$NotificationKey;->id:I

    return p0
.end method

.method public blacklist pkg()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/NotificationManager$NotificationKey;->pkg:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist tag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/NotificationManager$NotificationKey;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Landroid/app/NotificationManager$NotificationKey;->$record$getFieldsAsObjects()[Ljava/lang/Object;

    move-result-object p0

    const-class v0, Landroid/app/NotificationManager$NotificationKey;

    const-string/jumbo v1, "user;pkg;tag;id"

    invoke-static {p0, v0, v1}, Landroid/app/PropertyInvalidatedCache$Args$$ExternalSyntheticRecord0;->m([Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist user()Landroid/os/UserHandle;
    .locals 0

    iget-object p0, p0, Landroid/app/NotificationManager$NotificationKey;->user:Landroid/os/UserHandle;

    return-object p0
.end method
