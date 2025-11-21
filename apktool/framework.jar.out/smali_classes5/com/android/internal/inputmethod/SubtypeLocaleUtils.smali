.class public Lcom/android/internal/inputmethod/SubtypeLocaleUtils;
.super Ljava/lang/Object;
.source "SubtypeLocaleUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;
    .locals 6

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "_"

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt v0, v3, :cond_1

    const-string/jumbo v0, "tl"

    aget-object v5, p0, v4

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "fil"

    aput-object v0, p0, v4

    :cond_1
    array-length v0, p0

    if-ne v0, v3, :cond_2

    new-instance v0, Ljava/util/Locale;

    aget-object p0, p0, v4

    invoke-direct {v0, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_2
    array-length v0, p0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_3

    new-instance v0, Ljava/util/Locale;

    aget-object v1, p0, v4

    aget-object p0, p0, v3

    invoke-direct {v0, v1, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_3
    array-length v0, p0

    if-ne v0, v2, :cond_4

    new-instance v0, Ljava/util/Locale;

    aget-object v1, p0, v4

    aget-object v2, p0, v3

    aget-object p0, p0, v5

    invoke-direct {v0, v1, v2, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_4
    return-object v1
.end method
