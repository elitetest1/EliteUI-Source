.class public final Landroid/provider/SimPhonebookContract;
.super Ljava/lang/Object;
.source "SimPhonebookContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/SimPhonebookContract$ElementaryFiles;,
        Landroid/provider/SimPhonebookContract$SimRecords;
    }
.end annotation


# static fields
.field public static final whitelist AUTHORITY:Ljava/lang/String; = "com.android.simphonebook"

.field public static final whitelist AUTHORITY_URI:Landroid/net/Uri;

.field public static final blacklist SUBSCRIPTION_ID_PATH_SEGMENT:Ljava/lang/String; = "subid"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-string v0, "content://com.android.simphonebook"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/SimPhonebookContract;->AUTHORITY_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getEfUriPath(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const-string/jumbo p0, "sdn"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported EfType "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p0, "fdn"

    return-object p0

    :cond_2
    const-string p0, "adn"

    return-object p0
.end method
