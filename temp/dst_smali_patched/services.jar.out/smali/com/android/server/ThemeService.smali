.class public Lcom/android/server/ThemeService;
.super Landroid/content/res/IThemeService$Stub;
.source "ThemeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ThemeService$ThemeWorkerHandler;
    }
.end annotation


# static fields
.field private static final CM_SETUPWIZARD_PACKAGE:Ljava/lang/String; = "com.cyanogenmod.account"

.field private static final GOOGLE_SETUPWIZARD_PACKAGE:Ljava/lang/String; = "com.google.android.setupwizard"

.field private static final MAX_ICON_CACHE_SIZE:J = 0x2000000L

.field private static final PURGED_ICON_CACHE_SIZE:J = 0x1800000L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mClients:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/content/res/IThemeChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/server/ThemeService$ThemeWorkerHandler;

.field private mIconCacheSize:J

.field private mIsThemeApplying:Z

.field private mOldestFilesFirstComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mProgress:I

.field private mWallpaperChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mWallpaperChangedByUs:Z

.field private mWorker:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/android/server/ThemeService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/content/res/IThemeService$Stub;-><init>()V

    iput-boolean v2, p0, Lcom/android/server/ThemeService;->mWallpaperChangedByUs:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/ThemeService;->mIconCacheSize:J

    iput-boolean v2, p0, Lcom/android/server/ThemeService;->mIsThemeApplying:Z

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ThemeService;->mClients:Landroid/os/RemoteCallbackList;

    new-instance v0, Lcom/android/server/ThemeService$1;

    invoke-direct {v0, p0}, Lcom/android/server/ThemeService$1;-><init>(Lcom/android/server/ThemeService;)V

    iput-object v0, p0, Lcom/android/server/ThemeService;->mWallpaperChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/ThemeService$2;

    invoke-direct {v0, p0}, Lcom/android/server/ThemeService$2;-><init>(Lcom/android/server/ThemeService;)V

    iput-object v0, p0, Lcom/android/server/ThemeService;->mOldestFilesFirstComparator:Ljava/util/Comparator;

    iput-object p1, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ThemeServiceWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/ThemeService;->mWorker:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/server/ThemeService;->mWorker:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/ThemeService$ThemeWorkerHandler;

    iget-object v1, p0, Lcom/android/server/ThemeService;->mWorker:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/ThemeService$ThemeWorkerHandler;-><init>(Lcom/android/server/ThemeService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/ThemeService;->mHandler:Lcom/android/server/ThemeService$ThemeWorkerHandler;

    sget-object v0, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    const-string v1, "Spawned worker thread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/content/pm/ThemeUtils;->createThemeDirIfNotExists()V

    invoke-static {}, Landroid/content/pm/ThemeUtils;->createFontDirIfNotExists()V

    invoke-static {}, Landroid/content/pm/ThemeUtils;->createAlarmDirIfNotExists()V

    invoke-static {}, Landroid/content/pm/ThemeUtils;->createNotificationDirIfNotExists()V

    invoke-static {}, Landroid/content/pm/ThemeUtils;->createRingtoneDirIfNotExists()V

    invoke-static {}, Landroid/content/pm/ThemeUtils;->createIconCacheDirIfNotExists()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ThemeService;Ljava/util/Map;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ThemeService;->doApplyTheme(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/ThemeService;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/ThemeService;->doApplyDefaultTheme()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/ThemeService;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/ThemeService;->doBuildIconCache()V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/ThemeService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/server/ThemeService;->mWallpaperChangedByUs:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/ThemeService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/server/ThemeService;->mWallpaperChangedByUs:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/ThemeService;Ljava/util/Map;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ThemeService;->updateProvider(Ljava/util/Map;)V

    return-void
.end method

.method private applyBootAnimation(Ljava/lang/String;)Z
    .locals 9
    .parameter "themePath"

    .prologue
    const/4 v3, 0x0

    .local v3, success:Z
    :try_start_0
    new-instance v5, Ljava/util/zip/ZipFile;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .local v5, zip:Ljava/util/zip/ZipFile;
    const-string v6, "assets/bootanimation/bootanimation.zip"

    invoke-virtual {v5, v6}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v4

    .local v4, ze:Ljava/util/zip/ZipEntry;
    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/server/ThemeService;->clearBootAnimation()V

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v5, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .local v2, is:Ljava/io/BufferedInputStream;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/system/theme"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "bootanimation.zip"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, bootAnimationPath:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    invoke-static {v6, v2, v0}, Landroid/content/pm/ThemeUtils;->copyAndScaleBootAnimation(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v6, 0x1e4

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-static {v0, v6, v7, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .end local v0           #bootAnimationPath:Ljava/lang/String;
    .end local v2           #is:Ljava/io/BufferedInputStream;
    :cond_0
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    .end local v4           #ze:Ljava/util/zip/ZipEntry;
    .end local v5           #zip:Ljava/util/zip/ZipFile;
    :goto_0
    return v3

    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to load boot animation for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private broadcastThemeChange(Ljava/util/Map;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, components:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Landroid/content/Intent;

    const-string v2, "org.cyanogenmod.intent.action.THEME_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .local v0, componentsArrayList:Ljava/util/ArrayList;
    const-string v2, "components"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private clearBootAnimation()V
    .locals 3

    .prologue
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/system/theme"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bootanimation.zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, anim:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method private static createBuilderFrom(Landroid/content/res/Configuration;Ljava/util/Map;Ljava/lang/String;)Landroid/content/res/ThemeConfig$Builder;
    .locals 3
    .parameter "config"
    .parameter
    .parameter "pkgName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Configuration;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/res/ThemeConfig$Builder;"
        }
    .end annotation

    .prologue
    .local p1, componentMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Landroid/content/res/ThemeConfig$Builder;

    iget-object v1, p0, Landroid/content/res/Configuration;->themeConfig:Landroid/content/res/ThemeConfig;

    invoke-direct {v0, v1}, Landroid/content/res/ThemeConfig$Builder;-><init>(Landroid/content/res/ThemeConfig;)V

    .local v0, builder:Landroid/content/res/ThemeConfig$Builder;
    const-string v1, "mods_icons"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p2, :cond_5

    const-string v1, "mods_icons"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/ThemeConfig$Builder;->defaultIcon(Ljava/lang/String;)Landroid/content/res/ThemeConfig$Builder;

    :cond_0
    const-string v1, "mods_overlays"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p2, :cond_6

    const-string v1, "mods_overlays"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/res/ThemeConfig$Builder;->defaultOverlay(Ljava/lang/String;)Landroid/content/res/ThemeConfig$Builder;

    :cond_1
    const-string v1, "mods_fonts"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p2, :cond_7

    const-string v1, "mods_fonts"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_2
    invoke-virtual {v0, v1}, Landroid/content/res/ThemeConfig$Builder;->defaultFont(Ljava/lang/String;)Landroid/content/res/ThemeConfig$Builder;

    :cond_2
    const-string v1, "mods_status_bar"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v2, "com.android.systemui"

    if-nez p2, :cond_8

    const-string v1, "mods_status_bar"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_3
    invoke-virtual {v0, v2, v1}, Landroid/content/res/ThemeConfig$Builder;->overlay(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ThemeConfig$Builder;

    :cond_3
    const-string v1, "mods_navigation_bar"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v2, "com.android.systemui.navbar"

    if-nez p2, :cond_9

    const-string v1, "mods_navigation_bar"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_4
    invoke-virtual {v0, v2, v1}, Landroid/content/res/ThemeConfig$Builder;->overlay(Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/ThemeConfig$Builder;

    :cond_4
    return-object v0

    :cond_5
    move-object v1, p2

    goto :goto_0

    :cond_6
    move-object v1, p2

    goto :goto_1

    :cond_7
    move-object v1, p2

    goto :goto_2

    :cond_8
    move-object v1, p2

    goto :goto_3

    :cond_9
    move-object v1, p2

    goto :goto_4
.end method

.method private doApplyDefaultTheme()V
    .locals 10

    .prologue
    iget-object v8, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .local v7, resolver:Landroid/content/ContentResolver;
    const-string v8, "default_theme_package"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, defaultThemePkg:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string v8, "default_theme_components"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, defaultThemeComponents:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {}, Landroid/content/pm/ThemeUtils;->getAllComponents()Ljava/util/List;

    move-result-object v2

    .local v2, components:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v1, v8}, Ljava/util/HashMap;-><init>(I)V

    .local v1, componentMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, component:Ljava/lang/String;
    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .end local v0           #component:Ljava/lang/String;
    .end local v1           #componentMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2           #components:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    const-string v8, "\\|"

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .restart local v2       #components:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .restart local v1       #componentMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/ThemeService;->requestThemeChange(Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #componentMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2           #components:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v3           #defaultThemeComponents:Ljava/lang/String;
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    return-void

    .restart local v1       #componentMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2       #components:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3       #defaultThemeComponents:Ljava/lang/String;
    .restart local v6       #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v5

    .local v5, e:Landroid/os/RemoteException;
    sget-object v8, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    const-string v9, "Unable to set default theme"

    invoke-static {v8, v9, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private doApplyTheme(Ljava/util/Map;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, componentMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iput v1, p0, Lcom/android/server/ThemeService;->mProgress:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-direct {p0, v3, p1}, Lcom/android/server/ThemeService;->postFinish(ZLjava/util/Map;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_1
    iput-boolean v3, p0, Lcom/android/server/ThemeService;->mIsThemeApplying:Z

    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/android/server/ThemeService;->incrementProgress(I)V

    const/16 v1, 0x4b

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    div-int v0, v1, v2

    .local v0, progressIncrement:I
    invoke-direct {p0, p1}, Lcom/android/server/ThemeService;->updateProvider(Ljava/util/Map;)V

    const-string v1, "mods_icons"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "mods_icons"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/ThemeService;->updateIcons(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/ThemeService;->incrementProgress(I)V

    :cond_2
    const-string v1, "mods_homescreen"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "mods_homescreen"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/ThemeService;->updateWallpaper(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iput-boolean v3, p0, Lcom/android/server/ThemeService;->mWallpaperChangedByUs:Z

    :cond_3
    invoke-direct {p0, v0}, Lcom/android/server/ThemeService;->incrementProgress(I)V

    :cond_4
    const-string v1, "mods_lockscreen"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "mods_lockscreen"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/ThemeService;->updateLockscreen(Ljava/lang/String;)Z

    invoke-direct {p0, v0}, Lcom/android/server/ThemeService;->incrementProgress(I)V

    :cond_5
    const-string v1, "mods_notifications"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "mods_notifications"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/ThemeService;->updateNotifications(Ljava/lang/String;)Z

    invoke-direct {p0, v0}, Lcom/android/server/ThemeService;->incrementProgress(I)V

    :cond_6
    invoke-static {v4}, Landroid/os/Environment;->setUserRequired(Z)V

    const-string v1, "mods_alarms"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "mods_alarms"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/ThemeService;->updateAlarms(Ljava/lang/String;)Z

    invoke-direct {p0, v0}, Lcom/android/server/ThemeService;->incrementProgress(I)V

    :cond_7
    const-string v1, "mods_ringtones"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "mods_ringtones"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/ThemeService;->updateRingtones(Ljava/lang/String;)Z

    invoke-direct {p0, v0}, Lcom/android/server/ThemeService;->incrementProgress(I)V

    :cond_8
    const-string v1, "mods_bootanim"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "mods_bootanim"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/ThemeService;->updateBootAnim(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/ThemeService;->incrementProgress(I)V

    :cond_9
    invoke-static {v3}, Landroid/os/Environment;->setUserRequired(Z)V

    const-string v1, "mods_fonts"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "mods_fonts"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/ThemeService;->updateFonts(Ljava/lang/String;)Z

    invoke-direct {p0, v0}, Lcom/android/server/ThemeService;->incrementProgress(I)V

    :cond_a
    invoke-direct {p0, p1}, Lcom/android/server/ThemeService;->updateConfiguration(Ljava/util/Map;)Z

    invoke-direct {p0}, Lcom/android/server/ThemeService;->killLaunchers()V

    invoke-direct {p0, v3, p1}, Lcom/android/server/ThemeService;->postFinish(ZLjava/util/Map;)V

    iput-boolean v4, p0, Lcom/android/server/ThemeService;->mIsThemeApplying:Z

    goto/16 :goto_0
.end method

.method private doBuildIconCache()V
    .locals 9

    .prologue
    iget-object v6, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .local v5, pm:Landroid/content/pm/PackageManager;
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.MAIN"

    const/4 v7, 0x0

    invoke-direct {v4, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v4, mainIntent:Landroid/content/Intent;
    const-string v6, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .local v3, infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .local v2, info:Landroid/content/pm/ResolveInfo;
    :try_start_0
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to fetch icon for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #info:Landroid/content/pm/ResolveInfo;
    :cond_0
    return-void
.end method

.method private handlesThemeChanges(Ljava/lang/String;Ljava/util/List;)Z
    .locals 3
    .parameter "pkgName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .local v1, info:Landroid/content/pm/ResolveInfo;
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #info:Landroid/content/pm/ResolveInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private incrementProgress(I)V
    .locals 2
    .parameter "increment"

    .prologue
    const/16 v1, 0x64

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/ThemeService;->mProgress:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/ThemeService;->mProgress:I

    iget v0, p0, Lcom/android/server/ThemeService;->mProgress:I

    if-le v0, v1, :cond_0

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/server/ThemeService;->mProgress:I

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/server/ThemeService;->postProgress()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private isSetupActivity(Landroid/content/pm/ResolveInfo;)Z
    .locals 2
    .parameter "info"

    .prologue
    const-string v0, "com.google.android.setupwizard"

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.cyanogenmod.account"

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private killLaunchers()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    iget-object v9, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    const-string v10, "activity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .local v0, am:Landroid/app/ActivityManager;
    iget-object v9, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .local v7, pm:Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .local v2, homeIntent:Landroid/content/Intent;
    const-string v9, "android.intent.action.MAIN"

    invoke-virtual {v2, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "android.intent.category.HOME"

    invoke-virtual {v2, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v7, v2, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .local v5, infos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v9, Landroid/content/Intent;

    const-string v10, "org.cyanogenmod.intent.action.THEME_CHANGED"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9, v11}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .local v8, themeChangeInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .local v4, info:Landroid/content/pm/ResolveInfo;
    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v9, :cond_0

    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v9, :cond_0

    invoke-direct {p0, v4}, Lcom/android/server/ThemeService;->isSetupActivity(Landroid/content/pm/ResolveInfo;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v9, v8}, Lcom/android/server/ThemeService;->handlesThemeChanges(Ljava/lang/String;Ljava/util/List;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .local v6, pkgToStop:Ljava/lang/String;
    sget-object v9, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Force stopping "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " for theme change"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    sget-object v9, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    const-string v10, "Unable to force stop package, did you forget platform signature?"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #info:Landroid/content/pm/ResolveInfo;
    .end local v6           #pkgToStop:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private postFinish(ZLjava/util/Map;)V
    .locals 7
    .parameter "isSuccess"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, componentMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    monitor-enter p0

    const/4 v4, 0x0

    :try_start_0
    iput v4, p0, Lcom/android/server/ThemeService;->mProgress:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, p0, Lcom/android/server/ThemeService;->mClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v4, p0, Lcom/android/server/ThemeService;->mClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v6}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/content/res/IThemeChangeListener;

    .local v3, listener:Landroid/content/res/IThemeChangeListener;
    :try_start_1
    invoke-interface {v3, p1}, Landroid/content/res/IThemeChangeListener;->onFinish(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0           #N:I
    .end local v2           #i:I
    .end local v3           #listener:Landroid/content/res/IThemeChangeListener;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .restart local v0       #N:I
    .restart local v2       #i:I
    .restart local v3       #listener:Landroid/content/res/IThemeChangeListener;
    :catch_0
    move-exception v1

    .local v1, e:Landroid/os/RemoteException;
    sget-object v4, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    const-string v5, "Unable to post progress to client listener"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v1           #e:Landroid/os/RemoteException;
    .end local v3           #listener:Landroid/content/res/IThemeChangeListener;
    :cond_0
    iget-object v4, p0, Lcom/android/server/ThemeService;->mClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    if-eqz p1, :cond_1

    invoke-direct {p0, p2}, Lcom/android/server/ThemeService;->broadcastThemeChange(Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method private postProgress()V
    .locals 6

    .prologue
    iget-object v4, p0, Lcom/android/server/ThemeService;->mClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v4, p0, Lcom/android/server/ThemeService;->mClients:Landroid/os/RemoteCallbackList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/content/res/IThemeChangeListener;

    .local v3, listener:Landroid/content/res/IThemeChangeListener;
    :try_start_0
    iget v4, p0, Lcom/android/server/ThemeService;->mProgress:I

    invoke-interface {v3, v4}, Landroid/content/res/IThemeChangeListener;->onProgress(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, e:Landroid/os/RemoteException;
    sget-object v4, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    const-string v5, "Unable to post progress to client listener"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v1           #e:Landroid/os/RemoteException;
    .end local v3           #listener:Landroid/content/res/IThemeChangeListener;
    :cond_0
    iget-object v4, p0, Lcom/android/server/ThemeService;->mClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method private purgeIconCache()V
    .locals 12

    .prologue
    sget-object v8, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Purging icon cahe of size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/android/server/ThemeService;->mIconCacheSize:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/File;

    sget-object v8, Landroid/content/pm/ThemeUtils;->SYSTEM_THEME_ICON_CACHE_DIR:Ljava/lang/String;

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, cacheDir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .local v3, files:[Ljava/io/File;
    iget-object v8, p0, Lcom/android/server/ThemeService;->mOldestFilesFirstComparator:Ljava/util/Comparator;

    invoke-static {v3, v8}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    move-object v0, v3

    .local v0, arr$:[Ljava/io/File;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v0, v4

    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    .local v6, size:J
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-wide v8, p0, Lcom/android/server/ThemeService;->mIconCacheSize:J

    sub-long/2addr v8, v6

    iput-wide v8, p0, Lcom/android/server/ThemeService;->mIconCacheSize:J

    .end local v6           #size:J
    :cond_0
    iget-wide v8, p0, Lcom/android/server/ThemeService;->mIconCacheSize:J

    const-wide/32 v10, 0x1800000

    cmp-long v8, v8, v10

    if-gtz v8, :cond_2

    .end local v2           #f:Ljava/io/File;
    :cond_1
    return-void

    .restart local v2       #f:Ljava/io/File;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private setCustomLockScreenWallpaper(Ljava/lang/String;)Z
    .locals 11
    .parameter "pkgName"

    .prologue
    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v5

    .local v5, wm:Landroid/app/WallpaperManager;
    :try_start_0
    const-string v8, "holo"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1080223

    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, bmp:Landroid/graphics/Bitmap;
    invoke-virtual {v5, v1}, Landroid/app/WallpaperManager;->setKeyguardBitmap(Landroid/graphics/Bitmap;)V

    .end local v1           #bmp:Landroid/graphics/Bitmap;
    :goto_0
    const/4 v7, 0x1

    :goto_1
    return v7

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v5}, Landroid/app/WallpaperManager;->clearKeyguardWallpaper()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/Exception;
    sget-object v8, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "There was an error setting lockscreen wp for pkg "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    iget-object v8, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    const/4 v9, 0x2

    invoke-virtual {v8, p1, v9}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    .local v4, themeCtx:Landroid/content/Context;
    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .local v0, assetManager:Landroid/content/res/AssetManager;
    invoke-static {v0}, Landroid/content/pm/ThemeUtils;->getLockscreenWallpaperPath(Landroid/content/res/AssetManager;)Ljava/lang/String;

    move-result-object v6

    .local v6, wpPath:Ljava/lang/String;
    if-nez v6, :cond_2

    sget-object v8, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    const-string v9, "Not setting lockscreen wp because wallpaper file was not found."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file:///android_asset/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/content/pm/ThemeUtils;->getInputStreamFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .local v3, is:Ljava/io/InputStream;
    invoke-virtual {v5, v3}, Landroid/app/WallpaperManager;->setKeyguardStream(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private updateAlarms(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkgName"

    .prologue
    sget-object v0, Landroid/content/pm/ThemeUtils;->SYSTEM_THEME_ALARM_PATH:Ljava/lang/String;

    const-string v1, "alarms"

    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/server/ThemeService;->updateAudible(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private updateAudible(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 13
    .parameter "dirPath"
    .parameter "assetPath"
    .parameter "type"
    .parameter "pkgName"

    .prologue
    iget-object v10, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    invoke-static {v10, p1}, Landroid/content/pm/ThemeUtils;->clearAudibles(Landroid/content/Context;Ljava/lang/String;)V

    const-string v10, "holo"

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    move/from16 v0, p3

    invoke-static {v10, v0}, Landroid/content/pm/ThemeUtils;->setDefaultAudible(Landroid/content/Context;I)Z

    move-result v10

    if-nez v10, :cond_0

    sget-object v10, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    const-string v11, "There was an error installing the default audio file"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    :goto_0
    return v10

    :cond_0
    const/4 v10, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    .local v8, pi:Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v10, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/4 v11, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v10, v0, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    if-eqz v8, :cond_2

    iget-boolean v10, v8, Landroid/content/pm/PackageInfo;->isLegacyThemeApk:Z

    if-eqz v10, :cond_2

    move/from16 v0, p3

    invoke-direct {p0, p1, v0, v8}, Lcom/android/server/ThemeService;->updateLegacyAudible(Ljava/lang/String;ILandroid/content/pm/PackageInfo;)Z

    move-result v10

    goto :goto_0

    :catch_0
    move-exception v4

    .local v4, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v10, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to update audible "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v10, 0x0

    goto :goto_0

    .end local v4           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    :try_start_1
    iget-object v10, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    const/4 v11, 0x2

    move-object/from16 v0, p4

    invoke-virtual {v10, v0, v11}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v9

    .local v9, themeCtx:Landroid/content/Context;
    invoke-virtual {v9}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    .local v3, assetManager:Landroid/content/res/AssetManager;
    invoke-virtual {v3, p2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .local v2, assetList:[Ljava/lang/String;
    if-eqz v2, :cond_3

    array-length v10, v2

    if-nez v10, :cond_4

    :cond_3
    sget-object v10, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    const-string v11, "Could not find any audio assets"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    goto :goto_0

    .end local v2           #assetList:[Ljava/lang/String;
    .end local v3           #assetManager:Landroid/content/res/AssetManager;
    .end local v9           #themeCtx:Landroid/content/Context;
    :catch_1
    move-exception v4

    .local v4, e:Ljava/lang/Exception;
    sget-object v10, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "There was an error getting assets for pkg "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v10, 0x0

    goto :goto_0

    .end local v4           #e:Ljava/lang/Exception;
    .restart local v2       #assetList:[Ljava/lang/String;
    .restart local v3       #assetManager:Landroid/content/res/AssetManager;
    .restart local v9       #themeCtx:Landroid/content/Context;
    :cond_4
    const/4 v10, 0x0

    aget-object v1, v2, v10

    .local v1, asset:Ljava/lang/String;
    invoke-static {v1}, Landroid/content/pm/ThemeUtils;->isValidAudible(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    const/4 v10, 0x0

    goto :goto_0

    :cond_5
    const/4 v5, 0x0

    .local v5, is:Ljava/io/InputStream;
    const/4 v6, 0x0

    .local v6, os:Ljava/io/OutputStream;
    :try_start_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "file:///android_asset/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/content/pm/ThemeUtils;->getInputStreamFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v7, outFile:Ljava/io/File;
    invoke-static {v5, v7}, Landroid/os/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z

    const/16 v10, 0x1e7

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-static {v7, v10, v11, v12}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    iget-object v10, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    iget-object v11, v8, Landroid/content/pm/PackageInfo;->themeInfos:[Landroid/content/pm/ThemeInfo;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    iget-object v11, v11, Landroid/content/pm/ThemeInfo;->name:Ljava/lang/String;

    move/from16 v0, p3

    invoke-static {v10, v7, v0, v11}, Landroid/content/pm/ThemeUtils;->setAudible(Landroid/content/Context;Ljava/io/File;ILjava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    invoke-static {v5}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v6}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/OutputStream;)V

    const/4 v10, 0x1

    goto/16 :goto_0

    .end local v7           #outFile:Ljava/io/File;
    :catch_2
    move-exception v4

    .restart local v4       #e:Ljava/lang/Exception;
    :try_start_3
    sget-object v10, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "There was an error installing the new audio file for pkg "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v10, 0x0

    invoke-static {v5}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v6}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto/16 :goto_0

    .end local v4           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    invoke-static {v5}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v6}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v10
.end method

.method private updateBootAnim(Ljava/lang/String;)V
    .locals 5
    .parameter "pkgName"

    .prologue
    invoke-direct {p0}, Lcom/android/server/ThemeService;->clearBootAnimation()V

    const-string v3, "holo"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .local v2, pm:Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/ThemeService;->applyBootAnimation(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    const-string v4, "Changing boot animation failed"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updateConfiguration(Ljava/util/Map;)Z
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, components:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .local v0, am:Landroid/app/IActivityManager;
    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .local v7, token:J
    :try_start_0
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .local v1, config:Landroid/content/res/Configuration;
    const/4 v9, 0x0

    invoke-static {v1, p1, v9}, Lcom/android/server/ThemeService;->createBuilderFrom(Landroid/content/res/Configuration;Ljava/util/Map;Ljava/lang/String;)Landroid/content/res/ThemeConfig$Builder;

    move-result-object v6

    .local v6, themeBuilder:Landroid/content/res/ThemeConfig$Builder;
    invoke-virtual {v6}, Landroid/content/res/ThemeConfig$Builder;->build()Landroid/content/res/ThemeConfig;

    move-result-object v5

    .local v5, newConfig:Landroid/content/res/ThemeConfig;
    iget-object v9, v1, Landroid/content/res/Configuration;->themeConfig:Landroid/content/res/ThemeConfig;

    invoke-virtual {v5, v9}, Landroid/content/res/ThemeConfig;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "default_theme_package"

    invoke-static {v9, v10}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, defaultThemePkg:Ljava/lang/String;
    invoke-static {v1, p1, v3}, Lcom/android/server/ThemeService;->createBuilderFrom(Landroid/content/res/Configuration;Ljava/util/Map;Ljava/lang/String;)Landroid/content/res/ThemeConfig$Builder;

    move-result-object v2

    .local v2, defaultBuilder:Landroid/content/res/ThemeConfig$Builder;
    invoke-virtual {v2}, Landroid/content/res/ThemeConfig$Builder;->build()Landroid/content/res/ThemeConfig;

    move-result-object v9

    iput-object v9, v1, Landroid/content/res/Configuration;->themeConfig:Landroid/content/res/ThemeConfig;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V

    .end local v2           #defaultBuilder:Landroid/content/res/ThemeConfig$Builder;
    .end local v3           #defaultThemePkg:Ljava/lang/String;
    :cond_0
    iput-object v5, v1, Landroid/content/res/Configuration;->themeConfig:Landroid/content/res/ThemeConfig;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v1           #config:Landroid/content/res/Configuration;
    .end local v5           #newConfig:Landroid/content/res/ThemeConfig;
    .end local v6           #themeBuilder:Landroid/content/res/ThemeConfig$Builder;
    .end local v7           #token:J
    :cond_1
    const/4 v9, 0x1

    :goto_0
    return v9

    .restart local v7       #token:J
    :catch_0
    move-exception v4

    .local v4, e:Landroid/os/RemoteException;
    const/4 v9, 0x0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v4           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v9

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9
.end method

.method private updateFonts(Ljava/lang/String;)Z
    .locals 14
    .parameter "pkgName"

    .prologue
    sget-object v11, Landroid/content/pm/ThemeUtils;->SYSTEM_THEME_FONT_PATH:Ljava/lang/String;

    invoke-static {v11}, Landroid/content/pm/ThemeUtils;->deleteFilesInDir(Ljava/lang/String;)V

    const-string v11, "holo"

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    :try_start_0
    iget-object v11, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    const/4 v12, 0x2

    invoke-virtual {v11, p1, v12}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v10

    .local v10, themeCtx:Landroid/content/Context;
    invoke-virtual {v10}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    .local v3, assetManager:Landroid/content/res/AssetManager;
    const-string v11, "fonts"

    invoke-virtual {v3, v11}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .local v2, assetList:[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v11, v2

    if-nez v11, :cond_1

    :cond_0
    sget-object v11, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    const-string v12, "Could not find any font assets"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    .end local v2           #assetList:[Ljava/lang/String;
    .end local v3           #assetManager:Landroid/content/res/AssetManager;
    .end local v10           #themeCtx:Landroid/content/Context;
    :goto_0
    return v11

    :catch_0
    move-exception v4

    .local v4, e:Ljava/lang/Exception;
    sget-object v11, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "There was an error getting assets  for pkg "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v11, 0x0

    goto :goto_0

    .end local v4           #e:Ljava/lang/Exception;
    .restart local v2       #assetList:[Ljava/lang/String;
    .restart local v3       #assetManager:Landroid/content/res/AssetManager;
    .restart local v10       #themeCtx:Landroid/content/Context;
    :cond_1
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v7, v0

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v7, :cond_2

    aget-object v1, v0, v5

    .local v1, asset:Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, is:Ljava/io/InputStream;
    const/4 v8, 0x0

    .local v8, os:Ljava/io/OutputStream;
    :try_start_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "file:///android_asset/fonts/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/content/pm/ThemeUtils;->getInputStreamFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    new-instance v9, Ljava/io/File;

    sget-object v11, Landroid/content/pm/ThemeUtils;->SYSTEM_THEME_FONT_PATH:Ljava/lang/String;

    invoke-direct {v9, v11, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v9, outFile:Ljava/io/File;
    invoke-static {v6, v9}, Landroid/os/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z

    const/16 v11, 0x1e7

    const/4 v12, -0x1

    const/4 v13, -0x1

    invoke-static {v9, v11, v12, v13}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {v6}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v8}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/OutputStream;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v9           #outFile:Ljava/io/File;
    :catch_1
    move-exception v4

    .restart local v4       #e:Ljava/lang/Exception;
    :try_start_2
    sget-object v11, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "There was an error installing the new fonts for pkg "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v11, 0x0

    invoke-static {v6}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v8}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto :goto_0

    .end local v4           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    invoke-static {v6}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v8}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v11

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #asset:Ljava/lang/String;
    .end local v2           #assetList:[Ljava/lang/String;
    .end local v3           #assetManager:Landroid/content/res/AssetManager;
    .end local v5           #i$:I
    .end local v6           #is:Ljava/io/InputStream;
    .end local v7           #len$:I
    .end local v8           #os:Ljava/io/OutputStream;
    .end local v10           #themeCtx:Landroid/content/Context;
    :cond_2
    const-string v11, "sys.refresh_theme"

    const-string v12, "1"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x1

    goto/16 :goto_0
.end method

.method private updateIcons(Ljava/lang/String;)V
    .locals 3
    .parameter "pkgName"

    .prologue
    iget-object v1, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .local v0, pm:Landroid/content/pm/PackageManager;
    const-string v1, "holo"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->updateIconMaps(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->updateIconMaps(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/ThemeService;->mHandler:Lcom/android/server/ThemeService$ThemeWorkerHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/ThemeService$ThemeWorkerHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private updateLegacyAudible(Ljava/lang/String;ILandroid/content/pm/PackageInfo;)Z
    .locals 11
    .parameter "dirPath"
    .parameter "type"
    .parameter "pi"

    .prologue
    const/4 v7, 0x0

    iget-object v5, p3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .local v5, pkgName:Ljava/lang/String;
    iget-object v8, p3, Landroid/content/pm/PackageInfo;->legacyThemeInfos:[Landroid/content/pm/LegacyThemeInfo;

    if-eqz v8, :cond_0

    iget-object v8, p3, Landroid/content/pm/PackageInfo;->legacyThemeInfos:[Landroid/content/pm/LegacyThemeInfo;

    array-length v8, v8

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    :try_start_0
    iget-object v8, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    const/4 v9, 0x2

    invoke-virtual {v8, v5, v9}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .local v6, themeCtx:Landroid/content/Context;
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v8, p3, Landroid/content/pm/PackageInfo;->legacyThemeInfos:[Landroid/content/pm/LegacyThemeInfo;

    aget-object v8, v8, v7

    iget-object v0, v8, Landroid/content/pm/LegacyThemeInfo;->ringtoneFileName:Ljava/lang/String;

    .local v0, asset:Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Landroid/content/pm/ThemeUtils;->isValidAudible(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v2, 0x0

    .local v2, is:Ljava/io/InputStream;
    const/4 v3, 0x0

    .local v3, os:Ljava/io/OutputStream;
    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file:///android_asset/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/content/pm/ThemeUtils;->getInputStreamFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    new-instance v4, Ljava/io/File;

    const/16 v8, 0x2f

    invoke-virtual {v0, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, p1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v4, outFile:Ljava/io/File;
    invoke-static {v2, v4}, Landroid/os/FileUtils;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z

    const/16 v8, 0x1e7

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-static {v4, v8, v9, v10}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    iget-object v8, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    iget-object v9, p3, Landroid/content/pm/PackageInfo;->legacyThemeInfos:[Landroid/content/pm/LegacyThemeInfo;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget-object v9, v9, Landroid/content/pm/LegacyThemeInfo;->name:Ljava/lang/String;

    invoke-static {v8, v4, p2, v9}, Landroid/content/pm/ThemeUtils;->setAudible(Landroid/content/Context;Ljava/io/File;ILjava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {v2}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v3}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/OutputStream;)V

    const/4 v7, 0x1

    goto :goto_0

    .end local v0           #asset:Ljava/lang/String;
    .end local v2           #is:Ljava/io/InputStream;
    .end local v3           #os:Ljava/io/OutputStream;
    .end local v4           #outFile:Ljava/io/File;
    .end local v6           #themeCtx:Landroid/content/Context;
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    sget-object v8, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "There was an error getting assets for pkg "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    .restart local v6       #themeCtx:Landroid/content/Context;
    :pswitch_1
    iget-object v8, p3, Landroid/content/pm/PackageInfo;->legacyThemeInfos:[Landroid/content/pm/LegacyThemeInfo;

    aget-object v8, v8, v7

    iget-object v0, v8, Landroid/content/pm/LegacyThemeInfo;->notificationFileName:Ljava/lang/String;

    .restart local v0       #asset:Ljava/lang/String;
    goto :goto_1

    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v3       #os:Ljava/io/OutputStream;
    :catch_1
    move-exception v1

    .restart local v1       #e:Ljava/lang/Exception;
    :try_start_2
    sget-object v8, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "There was an error installing the new audio file for pkg "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v2}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v3}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto/16 :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    invoke-static {v2}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-static {v3}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v7

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateLockscreen(Ljava/lang/String;)Z
    .locals 4
    .parameter "pkgName"

    .prologue
    const/4 v0, 0x0

    .local v0, success:Z
    invoke-direct {p0, p1}, Lcom/android/server/ThemeService;->setCustomLockScreenWallpaper(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.KEYGUARD_WALLPAPER_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_0
    return v0
.end method

.method private updateNotifications(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkgName"

    .prologue
    sget-object v0, Landroid/content/pm/ThemeUtils;->SYSTEM_THEME_NOTIFICATION_PATH:Ljava/lang/String;

    const-string v1, "notifications"

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/server/ThemeService;->updateAudible(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private updateProvider(Ljava/util/Map;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, componentMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v7, 0x0

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .local v3, values:Landroid/content/ContentValues;
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, component:Ljava/lang/String;
    const-string v6, "value"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "key=?"

    .local v4, where:Ljava/lang/String;
    const/4 v5, 0x1

    new-array v2, v5, [Ljava/lang/String;

    invoke-static {v0}, Landroid/provider/ThemesContract$MixnMatchColumns;->componentToMixNMatchKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v7

    .local v2, selectionArgs:[Ljava/lang/String;
    aget-object v5, v2, v7

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/ThemesContract$MixnMatchColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6, v3, v4, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #component:Ljava/lang/String;
    .end local v2           #selectionArgs:[Ljava/lang/String;
    .end local v4           #where:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private updateRingtones(Ljava/lang/String;)Z
    .locals 3
    .parameter "pkgName"

    .prologue
    sget-object v0, Landroid/content/pm/ThemeUtils;->SYSTEM_THEME_RINGTONE_PATH:Ljava/lang/String;

    const-string v1, "ringtones"

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/server/ThemeService;->updateAudible(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private updateWallpaper(Ljava/lang/String;)Z
    .locals 19
    .parameter "pkgName"

    .prologue
    const-string v4, "pkg_name= ?"

    .local v4, selection:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v5, v1

    .local v5, selectionArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ThemesContract$MixnMatchColumns;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .local v8, c:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v17

    .local v17, wm:Landroid/app/WallpaperManager;
    const-string v1, "holo"

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual/range {v17 .. v17}, Landroid/app/WallpaperManager;->clear()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    :catch_0
    move-exception v9

    .local v9, e:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_1

    .end local v9           #e:Ljava/io/IOException;
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :try_start_1
    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->clear(Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v9

    .restart local v9       #e:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_1

    .end local v9           #e:Ljava/io/IOException;
    :cond_1
    const/4 v10, 0x0

    .local v10, in:Ljava/io/InputStream;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v14

    .local v14, themeContext:Landroid/content/Context;
    const-string v1, "is_legacy_theme"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/4 v11, 0x1

    .local v11, isLegacyTheme:Z
    :goto_2
    if-nez v11, :cond_6

    const-string v1, "wallpaper_uri"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .local v16, wallpaper:Ljava/lang/String;
    if-eqz v16, :cond_4

    invoke-static/range {v16 .. v16}, Landroid/webkit/URLUtil;->isAssetUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/content/pm/ThemeUtils;->getInputStreamFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    :goto_3
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .end local v16           #wallpaper:Ljava/lang/String;
    :goto_4
    invoke-static {v10}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_0

    .end local v11           #isLegacyTheme:Z
    :cond_2
    const/4 v11, 0x0

    goto :goto_2

    .restart local v11       #isLegacyTheme:Z
    .restart local v16       #wallpaper:Ljava/lang/String;
    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v10

    goto :goto_3

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v15

    .local v15, themeCtx:Landroid/content/Context;
    invoke-virtual {v15}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    .local v7, assetManager:Landroid/content/res/AssetManager;
    invoke-static {v7}, Landroid/content/pm/ThemeUtils;->getWallpaperPath(Landroid/content/res/AssetManager;)Ljava/lang/String;

    move-result-object v18

    .local v18, wpPath:Ljava/lang/String;
    if-nez v18, :cond_5

    sget-object v1, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    const-string v2, "Not setting wp because wallpaper file was not found."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    const/4 v1, 0x0

    .end local v7           #assetManager:Landroid/content/res/AssetManager;
    .end local v11           #isLegacyTheme:Z
    .end local v14           #themeContext:Landroid/content/Context;
    .end local v15           #themeCtx:Landroid/content/Context;
    .end local v16           #wallpaper:Ljava/lang/String;
    .end local v18           #wpPath:Ljava/lang/String;
    :goto_5
    invoke-static {v10}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto/16 :goto_1

    .restart local v7       #assetManager:Landroid/content/res/AssetManager;
    .restart local v11       #isLegacyTheme:Z
    .restart local v14       #themeContext:Landroid/content/Context;
    .restart local v15       #themeCtx:Landroid/content/Context;
    .restart local v16       #wallpaper:Ljava/lang/String;
    .restart local v18       #wpPath:Ljava/lang/String;
    :cond_5
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file:///android_asset/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/content/pm/ThemeUtils;->getInputStreamFromAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    goto :goto_3

    .end local v7           #assetManager:Landroid/content/res/AssetManager;
    .end local v15           #themeCtx:Landroid/content/Context;
    .end local v16           #wallpaper:Ljava/lang/String;
    .end local v18           #wpPath:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .local v13, pm:Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12

    .local v12, pi:Landroid/content/pm/PackageInfo;
    iget-object v1, v12, Landroid/content/pm/PackageInfo;->legacyThemeInfos:[Landroid/content/pm/LegacyThemeInfo;

    if-eqz v1, :cond_7

    iget-object v1, v12, Landroid/content/pm/PackageInfo;->legacyThemeInfos:[Landroid/content/pm/LegacyThemeInfo;

    array-length v1, v1

    if-lez v1, :cond_7

    iget-object v1, v12, Landroid/content/pm/PackageInfo;->legacyThemeInfos:[Landroid/content/pm/LegacyThemeInfo;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget v1, v1, Landroid/content/pm/LegacyThemeInfo;->wallpaperResourceId:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->setResource(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    .end local v11           #isLegacyTheme:Z
    .end local v12           #pi:Landroid/content/pm/PackageInfo;
    .end local v13           #pm:Landroid/content/pm/PackageManager;
    .end local v14           #themeContext:Landroid/content/Context;
    :catch_2
    move-exception v9

    .local v9, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_5

    .end local v9           #e:Ljava/lang/Exception;
    .restart local v11       #isLegacyTheme:Z
    .restart local v12       #pi:Landroid/content/pm/PackageInfo;
    .restart local v13       #pm:Landroid/content/pm/PackageManager;
    .restart local v14       #themeContext:Landroid/content/Context;
    :cond_7
    const/4 v1, 0x0

    goto :goto_5

    .end local v11           #isLegacyTheme:Z
    .end local v12           #pi:Landroid/content/pm/PackageInfo;
    .end local v13           #pm:Landroid/content/pm/PackageManager;
    .end local v14           #themeContext:Landroid/content/Context;
    :catchall_0
    move-exception v1

    invoke-static {v10}, Landroid/content/pm/ThemeUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v1
.end method


# virtual methods
.method public applyDefaultTheme()V
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_THEME_MANAGER"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/server/ThemeService;->mHandler:Lcom/android/server/ThemeService$ThemeWorkerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/ThemeService$ThemeWorkerHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public cacheComposedIcon(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 11
    .parameter "icon"
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .local v5, token:J
    new-instance v0, Ljava/io/File;

    sget-object v7, Landroid/content/pm/ThemeUtils;->SYSTEM_THEME_ICON_CACHE_DIR:Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, cacheDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    array-length v7, v7

    if-nez v7, :cond_0

    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcom/android/server/ThemeService;->mIconCacheSize:J

    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v3, outFile:Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .local v2, os:Ljava/io/FileOutputStream;
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x5a

    invoke-virtual {p1, v7, v8, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    const/16 v7, 0x1fc

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-static {v3, v7, v8, v9}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    iget-wide v7, p0, Lcom/android/server/ThemeService;->mIconCacheSize:J

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v9

    add-long/2addr v7, v9

    iput-wide v7, p0, Lcom/android/server/ThemeService;->mIconCacheSize:J

    iget-wide v7, p0, Lcom/android/server/ThemeService;->mIconCacheSize:J

    const-wide/32 v9, 0x2000000

    cmp-long v7, v7, v9

    if-lez v7, :cond_1

    invoke-direct {p0}, Lcom/android/server/ThemeService;->purgeIconCache()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    const/4 v4, 0x1

    .end local v2           #os:Ljava/io/FileOutputStream;
    .end local v3           #outFile:Ljava/io/File;
    .local v4, success:Z
    :goto_0
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    .end local v4           #success:Z
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    const/4 v4, 0x0

    .restart local v4       #success:Z
    sget-object v7, Lcom/android/server/ThemeService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to cache icon "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getProgress()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_THEME_MANAGER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/ThemeService;->mProgress:I

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isThemeApplying()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_THEME_MANAGER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/ThemeService;->mIsThemeApplying:Z

    return v0
.end method

.method public removeUpdates(Landroid/content/res/IThemeChangeListener;)V
    .locals 3
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_THEME_MANAGER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/ThemeService;->mClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method public requestThemeChange(Ljava/util/Map;)V
    .locals 4
    .parameter "componentMap"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v1, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_THEME_MANAGER"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/ThemeService;->mHandler:Lcom/android/server/ThemeService$ThemeWorkerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/ThemeService$ThemeWorkerHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public requestThemeChangeUpdates(Landroid/content/res/IThemeChangeListener;)V
    .locals 3
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_THEME_MANAGER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/ThemeService;->mClients:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public systemRunning()V
    .locals 3

    .prologue
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/ThemeService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ThemeService;->mWallpaperChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
