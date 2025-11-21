.class Lcom/samsung/android/share/SemShareCommon$1;
.super Ljava/util/HashMap;
.source "SemShareCommon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/share/SemShareCommon;->getHtmlCharMap()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/share/SemShareCommon;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/share/SemShareCommon;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/share/SemShareCommon$1;->this$0:Lcom/samsung/android/share/SemShareCommon;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string p1, "&nbsp;"

    const-string/jumbo v0, "\u00a0"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&iexcl;"

    const-string/jumbo v0, "\u00a1"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&cent;"

    const-string/jumbo v0, "\u00a2"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&pound;"

    const-string/jumbo v0, "\u00a3"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&curren;"

    const-string/jumbo v0, "\u00a4"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&yen;"

    const-string/jumbo v0, "\u00a5"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&brvbar;"

    const-string/jumbo v0, "\u00a6"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&sect;"

    const-string/jumbo v0, "\u00a7"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&uml;"

    const-string/jumbo v0, "\u00a8"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&copy;"

    const-string/jumbo v0, "\u00a9"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&ordf;"

    const-string/jumbo v0, "\u00aa"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&laquo;"

    const-string/jumbo v0, "\u00ab"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&not;"

    const-string/jumbo v0, "\u00ac"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&shy;"

    const-string/jumbo v0, "\u00ad"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&reg;"

    const-string/jumbo v0, "\u00ae"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&macr;"

    const-string/jumbo v0, "\u00af"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&deg;"

    const-string/jumbo v0, "\u00b0"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&plusmn;"

    const-string/jumbo v0, "\u00b1"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&sup2;"

    const-string/jumbo v0, "\u00b2"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&sup3;"

    const-string/jumbo v0, "\u00b3"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&acute;"

    const-string/jumbo v0, "\u00b4"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&micro;"

    const-string/jumbo v0, "\u00b5"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&para;"

    const-string/jumbo v0, "\u00b6"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&middot;"

    const-string/jumbo v0, "\u00b7"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&cedil;"

    const-string/jumbo v0, "\u00b8"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&sup1;"

    const-string/jumbo v0, "\u00b9"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&ordm;"

    const-string/jumbo v0, "\u00ba"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&raquo;"

    const-string/jumbo v0, "\u00bb"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&frac14;"

    const-string/jumbo v0, "\u00bc"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&frac12;"

    const-string/jumbo v0, "\u00bd"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&frac34;"

    const-string/jumbo v0, "\u00be"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&iquest;"

    const-string/jumbo v0, "\u00bf"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&Agrave;"

    const-string/jumbo v0, "\u00c0"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&Aacute;"

    const-string/jumbo v0, "\u00c1"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&Acirc;"

    const-string/jumbo v0, "\u00c2"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&Atilde;"

    const-string/jumbo v0, "\u00c3"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&Auml;"

    const-string/jumbo v0, "\u00c4"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&Aring;"

    const-string/jumbo v0, "\u00c5"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&AElig;"

    const-string/jumbo v0, "\u00c6"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&Ccedil;"

    const-string/jumbo v0, "\u00c7"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&Egrave;"

    const-string/jumbo v0, "\u00c8"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&Eacute;"

    const-string/jumbo v0, "\u00c9"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&Ecirc;"

    const-string/jumbo v0, "\u00ca"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&Euml;"

    const-string/jumbo v0, "\u00cb"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&Igrave;"

    const-string/jumbo v0, "\u00cc"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&Iacute;"

    const-string/jumbo v0, "\u00cd"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&Icirc;"

    const-string/jumbo v0, "\u00ce"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&Iuml;"

    const-string/jumbo v0, "\u00cf"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&ETH;"

    const-string/jumbo v0, "\u00d0"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&Ntilde;"

    const-string/jumbo v0, "\u00d1"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&Ograve;"

    const-string/jumbo v0, "\u00d2"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&Oacute;"

    const-string/jumbo v0, "\u00d3"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&Ocirc;"

    const-string/jumbo v0, "\u00d4"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&Otilde;"

    const-string/jumbo v0, "\u00d5"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&Ouml;"

    const-string/jumbo v0, "\u00d6"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&times;"

    const-string/jumbo v0, "\u00d7"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&Oslash;"

    const-string/jumbo v0, "\u00d8"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&Ugrave;"

    const-string/jumbo v0, "\u00d9"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&Uacute;"

    const-string/jumbo v0, "\u00da"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&Ucirc;"

    const-string/jumbo v0, "\u00db"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&Uuml;"

    const-string/jumbo v0, "\u00dc"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&Yacute;"

    const-string/jumbo v0, "\u00dd"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&THORN;"

    const-string/jumbo v0, "\u00de"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&szlig;"

    const-string/jumbo v0, "\u00df"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&agrave;"

    const-string/jumbo v0, "\u00e0"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&aacute;"

    const-string/jumbo v0, "\u00e1"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&acirc;"

    const-string/jumbo v0, "\u00e2"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&atilde;"

    const-string/jumbo v0, "\u00e3"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&auml;"

    const-string/jumbo v0, "\u00e4"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&aring;"

    const-string/jumbo v0, "\u00e5"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&aelig;"

    const-string/jumbo v0, "\u00e6"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&ccedil;"

    const-string/jumbo v0, "\u00e7"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&egrave;"

    const-string/jumbo v0, "\u00e8"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&eacute;"

    const-string/jumbo v0, "\u00e9"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&ecirc;"

    const-string/jumbo v0, "\u00ea"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&euml;"

    const-string/jumbo v0, "\u00eb"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&igrave;"

    const-string/jumbo v0, "\u00ec"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&iacute;"

    const-string/jumbo v0, "\u00ed"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&icirc;"

    const-string/jumbo v0, "\u00ee"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&iuml;"

    const-string/jumbo v0, "\u00ef"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&eth;"

    const-string/jumbo v0, "\u00f0"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&ntilde;"

    const-string/jumbo v0, "\u00f1"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&ograve;"

    const-string/jumbo v0, "\u00f2"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&oacute;"

    const-string/jumbo v0, "\u00f3"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&ocirc;"

    const-string/jumbo v0, "\u00f4"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&otilde;"

    const-string/jumbo v0, "\u00f5"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&ouml;"

    const-string/jumbo v0, "\u00f6"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&divide;"

    const-string/jumbo v0, "\u00f7"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&oslash;"

    const-string/jumbo v0, "\u00f8"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&ugrave;"

    const-string/jumbo v0, "\u00f9"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&uacute;"

    const-string/jumbo v0, "\u00fa"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&ucirc;"

    const-string/jumbo v0, "\u00fb"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&uuml;"

    const-string/jumbo v0, "\u00fc"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&yacute;"

    const-string/jumbo v0, "\u00fd"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&thorn;"

    const-string/jumbo v0, "\u00fe"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&yuml;"

    const-string/jumbo v0, "\u00ff"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&fnof;"

    const-string/jumbo v0, "\u0192"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&Alpha;"

    const-string/jumbo v0, "\u0391"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&Beta;"

    const-string/jumbo v0, "\u0392"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&Gamma;"

    const-string/jumbo v0, "\u0393"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&Delta;"

    const-string/jumbo v0, "\u0394"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&Epsilon;"

    const-string/jumbo v0, "\u0395"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&Zeta;"

    const-string/jumbo v0, "\u0396"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&Eta;"

    const-string/jumbo v0, "\u0397"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&Theta;"

    const-string/jumbo v0, "\u0398"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&Iota;"

    const-string/jumbo v0, "\u0399"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&Kappa;"

    const-string/jumbo v0, "\u039a"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&Lambda;"

    const-string/jumbo v0, "\u039b"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&Mu;"

    const-string/jumbo v0, "\u039c"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&Nu;"

    const-string/jumbo v0, "\u039d"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&Xi;"

    const-string/jumbo v0, "\u039e"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&Omicron;"

    const-string/jumbo v0, "\u039f"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&Pi;"

    const-string/jumbo v0, "\u03a0"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&Rho;"

    const-string/jumbo v0, "\u03a1"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&Sigma;"

    const-string/jumbo v0, "\u03a3"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&Tau;"

    const-string/jumbo v0, "\u03a4"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&Upsilon;"

    const-string/jumbo v0, "\u03a5"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&Phi;"

    const-string/jumbo v0, "\u03a6"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&Chi;"

    const-string/jumbo v0, "\u03a7"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&Psi;"

    const-string/jumbo v0, "\u03a8"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&Omega;"

    const-string/jumbo v0, "\u03a9"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&alpha;"

    const-string/jumbo v0, "\u03b1"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&beta;"

    const-string/jumbo v0, "\u03b2"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&gamma;"

    const-string/jumbo v0, "\u03b3"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&delta;"

    const-string/jumbo v0, "\u03b4"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&epsilon;"

    const-string/jumbo v0, "\u03b5"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&zeta;"

    const-string/jumbo v0, "\u03b6"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&eta;"

    const-string/jumbo v0, "\u03b7"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&theta;"

    const-string/jumbo v0, "\u03b8"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&iota;"

    const-string/jumbo v0, "\u03b9"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&kappa;"

    const-string/jumbo v0, "\u03ba"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&lambda;"

    const-string/jumbo v0, "\u03bb"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&mu;"

    const-string/jumbo v0, "\u03bc"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&nu;"

    const-string/jumbo v0, "\u03bd"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&xi;"

    const-string/jumbo v0, "\u03be"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&omicron;"

    const-string/jumbo v0, "\u03bf"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&pi;"

    const-string/jumbo v0, "\u03c0"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&rho;"

    const-string/jumbo v0, "\u03c1"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&sigmaf;"

    const-string/jumbo v0, "\u03c2"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&sigma;"

    const-string/jumbo v0, "\u03c3"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&tau;"

    const-string/jumbo v0, "\u03c4"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&upsilon;"

    const-string/jumbo v0, "\u03c5"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&phi;"

    const-string/jumbo v0, "\u03c6"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&chi;"

    const-string/jumbo v0, "\u03c7"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&psi;"

    const-string/jumbo v0, "\u03c8"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&omega;"

    const-string/jumbo v0, "\u03c9"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&thetasym;"

    const-string/jumbo v0, "\u03d1"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&upsih;"

    const-string/jumbo v0, "\u03d2"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&piv;"

    const-string/jumbo v0, "\u03d6"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&bull;"

    const-string/jumbo v0, "\u2022"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&hellip;"

    const-string/jumbo v0, "\u2026"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&prime;"

    const-string/jumbo v0, "\u2032"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&Prime;"

    const-string/jumbo v0, "\u2033"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&oline;"

    const-string/jumbo v0, "\u203e"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&frasl;"

    const-string/jumbo v0, "\u2044"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&weierp;"

    const-string/jumbo v0, "\u2118"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&image;"

    const-string/jumbo v0, "\u2111"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&real;"

    const-string/jumbo v0, "\u211c"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&trade;"

    const-string/jumbo v0, "\u2122"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&alefsym;"

    const-string/jumbo v0, "\u2135"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&larr;"

    const-string/jumbo v0, "\u2190"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&uarr;"

    const-string/jumbo v0, "\u2191"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&rarr;"

    const-string/jumbo v0, "\u2192"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&darr;"

    const-string/jumbo v0, "\u2193"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&harr;"

    const-string/jumbo v0, "\u2194"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&crarr;"

    const-string/jumbo v0, "\u21b5"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&lArr;"

    const-string/jumbo v0, "\u21d0"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&uArr;"

    const-string/jumbo v0, "\u21d1"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&rArr;"

    const-string/jumbo v0, "\u21d2"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&dArr;"

    const-string/jumbo v0, "\u21d3"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&hArr;"

    const-string/jumbo v0, "\u21d4"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&forall;"

    const-string/jumbo v0, "\u2200"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&part;"

    const-string/jumbo v0, "\u2202"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&exist;"

    const-string/jumbo v0, "\u2203"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&empty;"

    const-string/jumbo v0, "\u2205"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&nabla;"

    const-string/jumbo v0, "\u2207"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&isin;"

    const-string/jumbo v0, "\u2208"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&notin;"

    const-string/jumbo v0, "\u2209"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&ni;"

    const-string/jumbo v0, "\u220b"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&prod;"

    const-string/jumbo v0, "\u220f"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&sum;"

    const-string/jumbo v0, "\u2211"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&minus;"

    const-string/jumbo v0, "\u2212"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&lowast;"

    const-string/jumbo v0, "\u2217"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&radic;"

    const-string/jumbo v0, "\u221a"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&prop;"

    const-string/jumbo v0, "\u221d"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&infin;"

    const-string/jumbo v0, "\u221e"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&ang;"

    const-string/jumbo v0, "\u2220"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&and;"

    const-string/jumbo v0, "\u2227"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&or;"

    const-string/jumbo v0, "\u2228"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&cap;"

    const-string/jumbo v0, "\u2229"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&cup;"

    const-string/jumbo v0, "\u222a"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&int;"

    const-string/jumbo v0, "\u222b"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&there4;"

    const-string/jumbo v0, "\u2234"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&sim;"

    const-string/jumbo v0, "\u223c"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&cong;"

    const-string/jumbo v0, "\u2245"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&asymp;"

    const-string/jumbo v0, "\u2248"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&ne;"

    const-string/jumbo v0, "\u2260"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&equiv;"

    const-string/jumbo v0, "\u2261"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&le;"

    const-string/jumbo v0, "\u2264"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&ge;"

    const-string/jumbo v0, "\u2265"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&sub;"

    const-string/jumbo v0, "\u2282"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&sup;"

    const-string/jumbo v0, "\u2283"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&nsub;"

    const-string/jumbo v0, "\u2284"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&sube;"

    const-string/jumbo v0, "\u2286"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&supe;"

    const-string/jumbo v0, "\u2287"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&oplus;"

    const-string/jumbo v0, "\u2295"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&otimes;"

    const-string/jumbo v0, "\u2297"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&perp;"

    const-string/jumbo v0, "\u22a5"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&sdot;"

    const-string/jumbo v0, "\u22c5"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&lceil;"

    const-string/jumbo v0, "\u2308"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&rceil;"

    const-string/jumbo v0, "\u2309"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&lfloor;"

    const-string/jumbo v0, "\u230a"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&rfloor;"

    const-string/jumbo v0, "\u230b"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&lang;"

    const-string/jumbo v0, "\u2329"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&rang;"

    const-string/jumbo v0, "\u232a"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&loz;"

    const-string/jumbo v0, "\u25ca"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&spades;"

    const-string/jumbo v0, "\u2660"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&clubs;"

    const-string/jumbo v0, "\u2663"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&hearts;"

    const-string/jumbo v0, "\u2665"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&diams;"

    const-string/jumbo v0, "\u2666"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&quot;"

    const-string v0, "\""

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&#39;"

    const-string v0, "\'"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&amp;"

    const-string v0, "&"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&lt;"

    const-string v0, "<"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&gt;"

    const-string v0, ">"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&OElig;"

    const-string/jumbo v0, "\u0152"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&oelig;"

    const-string/jumbo v0, "\u0153"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&Scaron;"

    const-string/jumbo v0, "\u0160"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&scaron;"

    const-string/jumbo v0, "\u0161"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&Yuml;"

    const-string/jumbo v0, "\u0178"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&circ;"

    const-string/jumbo v0, "\u02c6"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&tilde;"

    const-string/jumbo v0, "\u02dc"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&ensp;"

    const-string/jumbo v0, "\u2002"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&emsp;"

    const-string/jumbo v0, "\u2003"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&thinsp;"

    const-string/jumbo v0, "\u2009"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&zwnj;"

    const-string/jumbo v0, "\u200c"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&zwj;"

    const-string/jumbo v0, "\u200d"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&lrm;"

    const-string/jumbo v0, "\u200e"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&rlm;"

    const-string/jumbo v0, "\u200f"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&ndash;"

    const-string/jumbo v0, "\u2013"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&mdash;"

    const-string/jumbo v0, "\u2014"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&lsquo;"

    const-string/jumbo v0, "\u2018"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&rsquo;"

    const-string/jumbo v0, "\u2019"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&sbquo;"

    const-string/jumbo v0, "\u201a"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&ldquo;"

    const-string/jumbo v0, "\u201c"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&rdquo;"

    const-string/jumbo v0, "\u201d"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&bdquo;"

    const-string/jumbo v0, "\u201e"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&dagger;"

    const-string/jumbo v0, "\u2020"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&Dagger;"

    const-string/jumbo v0, "\u2021"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&permil;"

    const-string/jumbo v0, "\u2030"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&lsaquo;"

    const-string/jumbo v0, "\u2039"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&rsaquo;"

    const-string/jumbo v0, "\u203a"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "&euro;"

    const-string/jumbo v0, "\u20ac"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/share/SemShareCommon$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
