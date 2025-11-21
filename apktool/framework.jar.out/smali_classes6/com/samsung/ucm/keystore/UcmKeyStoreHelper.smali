.class public Lcom/samsung/ucm/keystore/UcmKeyStoreHelper;
.super Ljava/lang/Object;
.source "UcmKeyStoreHelper.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "UcmKeyStoreHelper"


# direct methods
.method private constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Utility class"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist addUcmProvider()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/samsung/ucm/keystore/UcmKeyStoreHelper;->updateUcmProvider(Z)V

    return-void
.end method

.method public static blacklist updateUcmProvider(Z)V
    .locals 12

    :try_start_0
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v0

    array-length v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    const/4 v3, -0x1

    move v4, v2

    move v5, v3

    move v6, v5

    :goto_0
    const-string v7, "UcmKeystore"

    const/4 v8, 0x1

    if-ge v2, v1, :cond_3

    :try_start_1
    aget-object v9, v0, v2

    add-int/2addr v5, v8

    if-nez v9, :cond_0

    goto :goto_1

    :cond_0
    const-string v10, "BC"

    invoke-virtual {v9}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move v6, v5

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v9}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    move v4, v8

    if-eq v6, v3, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    if-nez v4, :cond_5

    if-eqz p0, :cond_5

    new-instance p0, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;

    invoke-direct {p0}, Lcom/samsung/ucm/keystore/KnoxUcmKeyStoreProvider;-><init>()V

    if-eq v6, v3, :cond_4

    add-int/2addr v6, v8

    invoke-static {p0, v6}, Ljava/security/Security;->insertProviderAt(Ljava/security/Provider;I)I

    return-void

    :cond_4
    invoke-static {p0}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    return-void

    :cond_5
    if-eqz v4, :cond_6

    if-nez p0, :cond_6

    invoke-static {v7}, Ljava/security/Security;->removeProvider(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "UcmKeyStoreHelper"

    const-string v1, "Unable to add KnoxUcmKeyStoreProvider"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    return-void
.end method
