.class Landroid/net/Uri$Part;
.super Landroid/net/Uri$AbstractPart;
.source "Uri.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Part"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/Uri$Part$EmptyPart;
    }
.end annotation


# static fields
.field static final greylist-max-o EMPTY:Landroid/net/Uri$Part;

.field static final greylist-max-o NULL:Landroid/net/Uri$Part;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Landroid/net/Uri$Part$EmptyPart;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/net/Uri$Part$EmptyPart;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/net/Uri$Part;->NULL:Landroid/net/Uri$Part;

    new-instance v0, Landroid/net/Uri$Part$EmptyPart;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/net/Uri$Part$EmptyPart;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/net/Uri$Part;->EMPTY:Landroid/net/Uri$Part;

    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/net/Uri$AbstractPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/net/Uri$Part;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static greylist-max-o from(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Part;
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Landroid/net/Uri$Part;->NULL:Landroid/net/Uri$Part;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    sget-object p0, Landroid/net/Uri$Part;->EMPTY:Landroid/net/Uri$Part;

    return-object p0

    :cond_1
    if-nez p1, :cond_2

    sget-object p0, Landroid/net/Uri$Part;->NULL:Landroid/net/Uri$Part;

    return-object p0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    sget-object p0, Landroid/net/Uri$Part;->EMPTY:Landroid/net/Uri$Part;

    return-object p0

    :cond_3
    new-instance v0, Landroid/net/Uri$Part;

    invoke-direct {v0, p0, p1}, Landroid/net/Uri$Part;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static greylist-max-o fromDecoded(Ljava/lang/String;)Landroid/net/Uri$Part;
    .locals 1

    sget-object v0, Landroid/net/Uri$NotCachedHolder;->NOT_CACHED:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/net/Uri$Part;->from(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object p0

    return-object p0
.end method

.method static greylist-max-o fromEncoded(Ljava/lang/String;)Landroid/net/Uri$Part;
    .locals 1

    sget-object v0, Landroid/net/Uri$NotCachedHolder;->NOT_CACHED:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/net/Uri$Part;->from(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object p0

    return-object p0
.end method

.method static greylist-max-o nonNull(Landroid/net/Uri$Part;)Landroid/net/Uri$Part;
    .locals 0

    if-nez p0, :cond_0

    sget-object p0, Landroid/net/Uri$Part;->NULL:Landroid/net/Uri$Part;

    :cond_0
    return-object p0
.end method


# virtual methods
.method greylist-max-o getEncoded()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroid/net/Uri$Part;->encoded:Ljava/lang/String;

    sget-object v1, Landroid/net/Uri$NotCachedHolder;->NOT_CACHED:Ljava/lang/String;

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Landroid/net/Uri$Part;->encoded:Ljava/lang/String;

    return-object p0

    :cond_0
    iget-object v0, p0, Landroid/net/Uri$Part;->decoded:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/Uri$Part;->encoded:Ljava/lang/String;

    return-object v0
.end method

.method greylist-max-o isEmpty()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
