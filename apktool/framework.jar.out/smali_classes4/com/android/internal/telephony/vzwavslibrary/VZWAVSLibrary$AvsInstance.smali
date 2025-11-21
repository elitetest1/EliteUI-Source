.class Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsInstance;
.super Ljava/lang/Object;
.source "VZWAVSLibrary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AvsInstance"
.end annotation


# instance fields
.field final blacklist authority:Ljava/lang/String;

.field final blacklist contentProviderUri:Landroid/net/Uri;

.field final blacklist fingerprints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field blacklist isAvailable:Z

.field final blacklist name:Ljava/lang/String;

.field final blacklist permissions:[Ljava/lang/String;


# direct methods
.method varargs constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsInstance;->isAvailable:Z

    iput-object p1, p0, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsInstance;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsInstance;->authority:Ljava/lang/String;

    invoke-static {}, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary;->-$$Nest$sfgetEN()Ljava/util/Locale;

    move-result-object p1

    const-string v1, "content://%s/apis"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsInstance;->contentProviderUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsInstance;->fingerprints:Ljava/util/List;

    if-nez p4, :cond_0

    new-array p4, v0, [Ljava/lang/String;

    :cond_0
    iput-object p4, p0, Lcom/android/internal/telephony/vzwavslibrary/VZWAVSLibrary$AvsInstance;->permissions:[Ljava/lang/String;

    return-void
.end method
