.class Landroid/content/ContentResolver$UriResultListener;
.super Landroid/content/ContentResolver$ResultListener;
.source "ContentResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UriResultListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/ContentResolver$ResultListener<",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/content/ContentResolver$ResultListener;-><init>(Landroid/content/ContentResolver-IA;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/ContentResolver-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentResolver$UriResultListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist getResultFromBundle(Landroid/os/Bundle;)Landroid/net/Uri;
    .locals 1

    const-string/jumbo p0, "result"

    const-class v0, Landroid/net/Uri;

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;

    return-object p0
.end method

.method protected bridge synthetic blacklist getResultFromBundle(Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver$UriResultListener;->getResultFromBundle(Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
