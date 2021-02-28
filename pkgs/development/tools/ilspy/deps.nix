{ fetchurl }: let

  fetchNuGet = { name, version, sha256 }: fetchurl {
    inherit sha256;
    url = "https://www.nuget.org/api/v2/package/${name}/${version}";
  };

in [

  (fetchNuGet {
    name = "runtime.unix.system.io.filesystem";
    version = "4.3.0";
    sha256 = "14nbkhvs7sji5r1saj2x8daz82rnf9kx28d3v2qss34qbr32dzix";
  })

  (fetchNuGet {
    name = "avalonia";
    version = "0.10.0";
    sha256 = "0wf8nqdj0xi6drzw676vm5ac2kaxcd76af4y1cirfw4j7lxvs344";
  })

  (fetchNuGet {
    name = "microsoft.netcore.targets";
    version = "1.1.0";
    sha256 = "193xwf33fbm0ni3idxzbr5fdq3i2dlfgihsac9jj7whj0gd902nh";
  })

  (fetchNuGet {
    name = "system.private.uri";
    version = "4.3.0";
    sha256 = "04r1lkdnsznin0fj4ya1zikxiqr0h6r6a1ww2dsm60gqhdrf0mvx";
  })

  (fetchNuGet {
    name = "microsoft.codeanalysis.analyzers";
    version = "2.9.6";
    sha256 = "18mr1f0wpq0fir8vjnq0a8pz50zpnblr7sabff0yqx37c975934a";
  })

  (fetchNuGet {
    name = "system.threading.threadpool";
    version = "4.0.10";
    sha256 = "0fdr61yjcxh5imvyf93n2m3n5g9pp54bnw2l1d2rdl9z6dd31ypx";
  })

  (fetchNuGet {
    name = "runtime.any.system.runtime.interopservices";
    version = "4.3.0";
    sha256 = "0c3g3g3jmhlhw4klrc86ka9fjbl7i59ds1fadsb2l8nqf8z3kb19";
  })

  (fetchNuGet {
    name = "system.threading";
    version = "4.3.0";
    sha256 = "0rw9wfamvhayp5zh3j7p1yfmx9b5khbf4q50d8k5rk993rskfd34";
  })

  (fetchNuGet {
    name = "runtime.native.system";
    version = "4.3.0";
    sha256 = "15hgf6zaq9b8br2wi1i3x0zvmk410nlmsmva9p0bbg73v6hml5k4";
  })

  (fetchNuGet {
    name = "runtime.any.system.globalization";
    version = "4.3.0";
    sha256 = "1daqf33hssad94lamzg01y49xwndy2q97i2lrb7mgn28656qia1x";
  })

  (fetchNuGet {
    name = "system.threading.tasks.extensions";
    version = "4.5.4";
    sha256 = "0y6ncasgfcgnjrhynaf0lwpkpkmv4a07sswwkwbwb5h7riisj153";
  })

  (fetchNuGet {
    name = "system.threading.tasks.extensions";
    version = "4.5.3";
    sha256 = "0g7r6hm572ax8v28axrdxz1gnsblg6kszq17g51pj14a5rn2af7i";
  })

  (fetchNuGet {
    name = "system.reflection.emit.lightweight";
    version = "4.3.0";
    sha256 = "0ql7lcakycrvzgi9kxz1b3lljd990az1x6c4jsiwcacrvimpib5c";
  })

  (fetchNuGet {
    name = "avalonia.avaloniaedit";
    version = "0.10.0";
    sha256 = "15w41q1znyagmwb3a1hj74s7ff7ydq8rwl1qaf1s2skg9k57y33a";
  })

  (fetchNuGet {
    name = "system.security.cryptography.encoding";
    version = "4.0.0";
    sha256 = "0a8y1a5wkmpawc787gfmnrnbzdgxmx1a14ax43jf3rj9gxmy3vk4";
  })

  (fetchNuGet {
    name = "system.io.compression";
    version = "4.3.0";
    sha256 = "084zc82yi6yllgda0zkgl2ys48sypiswbiwrv7irb3r0ai1fp4vz";
  })

  (fetchNuGet {
    name = "system.reflection.primitives";
    version = "4.3.0";
    sha256 = "04xqa33bld78yv5r93a8n76shvc8wwcdgr1qvvjh959g3rc31276";
  })

  (fetchNuGet {
    name = "runtime.any.system.diagnostics.tracing";
    version = "4.3.0";
    sha256 = "00j6nv2xgmd3bi347k00m7wr542wjlig53rmj28pmw7ddcn97jbn";
  })

  (fetchNuGet {
    name = "nuget.packaging.core.types";
    version = "4.2.0";
    sha256 = "031gzbs5sqb46c2rbqpybc9bw0i7ilidbbv2k7rdas3300cjp5kj";
  })

  (fetchNuGet {
    name = "system.security.principal.windows";
    version = "4.7.0";
    sha256 = "1a56ls5a9sr3ya0nr086sdpa9qv0abv31dd6fp27maqa9zclqq5d";
  })

  (fetchNuGet {
    name = "runtime.native.system.security.cryptography";
    version = "4.0.0";
    sha256 = "0k57aa2c3b10wl3hfqbgrl7xq7g8hh3a3ir44b31dn5p61iiw3z9";
  })

  (fetchNuGet {
    name = "system.reflection.metadata";
    version = "1.6.0";
    sha256 = "1wdbavrrkajy7qbdblpbpbalbdl48q3h34cchz24gvdgyrlf15r4";
  })

  (fetchNuGet {
    name = "system.reflection.extensions";
    version = "4.3.0";
    sha256 = "02bly8bdc98gs22lqsfx9xicblszr2yan7v2mmw3g7hy6miq5hwq";
  })

  (fetchNuGet {
    name = "runtime.any.system.reflection.extensions";
    version = "4.3.0";
    sha256 = "0zyri97dfc5vyaz9ba65hjj1zbcrzaffhsdlpxc9bh09wy22fq33";
  })

  (fetchNuGet {
    name = "system.reflection.typeextensions";
    version = "4.3.0";
    sha256 = "0y2ssg08d817p0vdag98vn238gyrrynjdj4181hdg780sif3ykp1";
  })

  (fetchNuGet {
    name = "microsoft.aspnetcore.app.runtime.osx-x64";
    version = "3.1.8";
    sha256 = "0dkib4r4v5wqxsi6zca6x3zin1x4lha53dqbgsaiah961h1yhpp4";
  })

  (fetchNuGet {
    name = "runtime.any.system.runtime.handles";
    version = "4.3.0";
    sha256 = "0bh5bi25nk9w9xi8z23ws45q5yia6k7dg3i4axhfqlnj145l011x";
  })

  (fetchNuGet {
    name = "system.text.encoding.codepages";
    version = "4.5.1";
    sha256 = "1z21qyfs6sg76rp68qdx0c9iy57naan89pg7p6i3qpj8kyzn921w";
  })

  (fetchNuGet {
    name = "microsoft.codeanalysis.csharp";
    version = "3.4.0";
    sha256 = "0rhylcwa95bxawcgixk64knv7p7xrykdjcabmx3gknk8hvj1ai9y";
  })

  (fetchNuGet {
    name = "nuget.contentmodel";
    version = "4.2.0";
    sha256 = "1989zmdgwh13zwg9kafapdka6p46i50iw434fb8k22jp6amnwnvm";
  })

  (fetchNuGet {
    name = "microsoft.visualstudio.validation";
    version = "15.0.82";
    sha256 = "0ms0167bi97hps5d5pw0rd2vkf24qchzxqfl2bn5h7fry41mm4gc";
  })

  (fetchNuGet {
    name = "runtime.native.system.security.cryptography.openssl";
    version = "4.3.0";
    sha256 = "18pzfdlwsg2nb1jjjjzyb5qlgy6xjxzmhnfaijq5s2jw3cm3ab97";
  })

  (fetchNuGet {
    name = "runtime.ubuntu.16.04-x64.runtime.native.system.security.cryptography.openssl";
    version = "4.3.0";
    sha256 = "15zrc8fgd8zx28hdghcj5f5i34wf3l6bq5177075m2bc2j34jrqy";
  })

  (fetchNuGet {
    name = "system.linq.expressions";
    version = "4.3.0";
    sha256 = "0ky2nrcvh70rqq88m9a5yqabsl4fyd17bpr63iy2mbivjs2nyypv";
  })

  (fetchNuGet {
    name = "microsoft.netcore.app.runtime.win-x64";
    version = "3.1.8";
    sha256 = "010c514ls1q9gdnyj0kvknx7a0z034lfbbcxqa8cjiv0snax4pqz";
  })

  (fetchNuGet {
    name = "nuget.frameworks";
    version = "4.2.0";
    sha256 = "0dwzg8kq0fwdjzl00ag969sxakj3brppr4y7k37yx5w1slj7wsb3";
  })

  (fetchNuGet {
    name = "system.linq";
    version = "4.3.0";
    sha256 = "1w0gmba695rbr80l1k2h4mrwzbzsyfl2z4klmpbsvsg5pm4a56s7";
  })

  (fetchNuGet {
    name = "avalonia.freedesktop";
    version = "0.10.0";
    sha256 = "08z3vybk474yxaipd7nqqr9xycgprggcri4lp61ns3p3fj599ydp";
  })

  (fetchNuGet {
    name = "avalonia.desktop";
    version = "0.10.0";
    sha256 = "1vwaxxnzcgkdrxvrkjcxpc9c839pxmm6ajq83xiqzn5f4vvx29di";
  })

  (fetchNuGet {
    name = "avalonia.native";
    version = "0.10.0";
    sha256 = "1kfzn349rllp7ngydvxqn84hmgxrkbgf7mgrqwcagq809f73mzyp";
  })

  (fetchNuGet {
    name = "system.reflection.emit.ilgeneration";
    version = "4.3.0";
    sha256 = "0w1n67glpv8241vnpz1kl14sy7zlnw414aqwj4hcx5nd86f6994q";
  })

  (fetchNuGet {
    name = "microsoft.visualstudio.composition";
    version = "16.4.11";
    sha256 = "1mfz0adhi0ysa5y52h2xjcini3jjqf770mw3jpd564zbc61ffx20";
  })

  (fetchNuGet {
    name = "avalonia.controls.datagrid";
    version = "0.10.0";
    sha256 = "0yry5kwbp03lznv2zay39p2ry2jsdf7s1syjzf93dd64pgl5bwpk";
  })

  (fetchNuGet {
    name = "system.reflection";
    version = "4.3.0";
    sha256 = "0xl55k0mw8cd8ra6dxzh974nxif58s3k1rjv1vbd7gjbjr39j11m";
  })

  (fetchNuGet {
    name = "microsoft.netcore.app.host.win-x64";
    version = "3.1.8";
    sha256 = "1d7wlnibf9fgq57hwnjqhlh33hxg417ljf1djb9yan4xik1wl4hb";
  })

  (fetchNuGet {
    name = "system.runtime.numerics";
    version = "4.0.1";
    sha256 = "1y308zfvy0l5nrn46mqqr4wb4z1xk758pkk8svbz8b5ij7jnv4nn";
  })

  (fetchNuGet {
    name = "system.security.accesscontrol";
    version = "4.5.0";
    sha256 = "1wvwanz33fzzbnd2jalar0p0z3x0ba53vzx1kazlskp7pwyhlnq0";
  })

  (fetchNuGet {
    name = "system.threading.thread";
    version = "4.0.0";
    sha256 = "1gxxm5fl36pjjpnx1k688dcw8m9l7nmf802nxis6swdaw8k54jzc";
  })

  (fetchNuGet {
    name = "system.diagnostics.process";
    version = "4.1.0";
    sha256 = "061lrcs7xribrmq7kab908lww6kn2xn1w3rdc41q189y0jibl19s";
  })

  (fetchNuGet {
    name = "nuget.packaging";
    version = "4.2.0";
    sha256 = "1g83ry4x0zlcdcgwd7c8daxig4cx77jics6rlfasy223hyvss8p3";
  })

  (fetchNuGet {
    name = "microsoft.win32.systemevents";
    version = "4.5.0";
    sha256 = "0fnkv3ky12227zqg4zshx4kw2mvysq2ppxjibfw02cc3iprv4njq";
  })

  (fetchNuGet {
    name = "avalonia.skia";
    version = "0.10.0";
    sha256 = "1d5w7pl1xx9l250mhdq3jnpy5zl77j8n3ccjjxfg8sc7rnyd2fx9";
  })

  (fetchNuGet {
    name = "microsoft.netcore.app.host.osx-x64";
    version = "3.1.8";
    sha256 = "1ip8pgra9z6ha3yc4xqkb85cl9kx2jbwhwzdi3dp8bkqbvlirvkb";
  })

  (fetchNuGet {
    name = "runtime.rhel.7-x64.runtime.native.system.security.cryptography.openssl";
    version = "4.3.0";
    sha256 = "0vhynn79ih7hw7cwjazn87rm9z9fj0rvxgzlab36jybgcpcgphsn";
  })

  (fetchNuGet {
    name = "microsoft.netcore.platforms";
    version = "2.1.2";
    sha256 = "1507hnpr9my3z4w1r6xk5n0s1j3y6a2c2cnynj76za7cphxi1141";
  })

  (fetchNuGet {
    name = "microsoft.netcore.platforms";
    version = "1.1.0";
    sha256 = "08vh1r12g6ykjygq5d3vq09zylgb84l63k49jc4v8faw9g93iqqm";
  })

  (fetchNuGet {
    name = "system.runtime.handles";
    version = "4.3.0";
    sha256 = "0sw2gfj2xr7sw9qjn0j3l9yw07x73lcs97p8xfc9w1x9h5g5m7i8";
  })

  (fetchNuGet {
    name = "microsoft.visualstudio.composition.netfxattributes";
    version = "16.4.11";
    sha256 = "1p73k61bl9j426l7qawdvqn1gmj6kgxfjs356h942621xmdi4062";
  })

  (fetchNuGet {
    name = "system.xml.xdocument";
    version = "4.0.11";
    sha256 = "0n4lvpqzy9kc7qy1a4acwwd7b7pnvygv895az5640idl2y9zbz18";
  })

  (fetchNuGet {
    name = "avalonia.x11";
    version = "0.10.0";
    sha256 = "0asja6g20c6wzxmvx0knkdk6f5fbrx99n82zcrj4y2irhmmzjhxy";
  })

  (fetchNuGet {
    name = "system.security.permissions";
    version = "4.5.0";
    sha256 = "192ww5rm3c9mirxgl1nzyrwd18am3izqls0hzm0fvcdjl5grvbhm";
  })

  (fetchNuGet {
    name = "skiasharp";
    version = "2.80.2";
    sha256 = "17n0f4gfxz69fzd7zmgimbxfja15vq902arap2rqjr1hxp8sck7g";
  })

  (fetchNuGet {
    name = "avalonia.win32";
    version = "0.10.0";
    sha256 = "0lyfmhh0q1dzzb5blp76phj894wl6ab0kn1pcprxqvj94dcwric8";
  })

  (fetchNuGet {
    name = "system.drawing.common";
    version = "4.5.0";
    sha256 = "0knqa0zsm91nfr34br8gx5kjqq4v81zdhqkacvs2hzc8nqk0ddhc";
  })

  (fetchNuGet {
    name = "runtime.native.system.io.compression";
    version = "4.3.0";
    sha256 = "1vvivbqsk6y4hzcid27pqpm5bsi6sc50hvqwbcx8aap5ifrxfs8d";
  })

  (fetchNuGet {
    name = "nuget.packaging.core";
    version = "4.2.0";
    sha256 = "11dpszywsxb12ybx176z2703181xixzhxg3w3rc8ivw699ivsdfk";
  })

  (fetchNuGet {
    name = "system.text.encoding.extensions";
    version = "4.3.0";
    sha256 = "11q1y8hh5hrp5a3kw25cb6l00v5l5dvirkz8jr3sq00h1xgcgrxy";
  })

  (fetchNuGet {
    name = "system.runtime.serialization.primitives";
    version = "4.1.1";
    sha256 = "042rfjixknlr6r10vx2pgf56yming8lkjikamg3g4v29ikk78h7k";
  })

  (fetchNuGet {
    name = "runtime.opensuse.13.2-x64.runtime.native.system.security.cryptography.openssl";
    version = "4.3.0";
    sha256 = "0qyynf9nz5i7pc26cwhgi8j62ps27sqmf78ijcfgzab50z9g8ay3";
  })

  (fetchNuGet {
    name = "system.threading.tasks";
    version = "4.3.0";
    sha256 = "134z3v9abw3a6jsw17xl3f6hqjpak5l682k2vz39spj4kmydg6k7";
  })

  (fetchNuGet {
    name = "runtime.win.system.diagnostics.debug";
    version = "4.3.0";
    sha256 = "16fbn4bcynad1ygdq0yk1wmckvs8jvrrf104xa5dc2hlc8y3x58f";
  })

  (fetchNuGet {
    name = "runtime.unix.microsoft.win32.primitives";
    version = "4.3.0";
    sha256 = "0y61k9zbxhdi0glg154v30kkq7f8646nif8lnnxbvkjpakggd5id";
  })

  (fetchNuGet {
    name = "runtime.any.system.runtime";
    version = "4.3.0";
    sha256 = "1cqh1sv3h5j7ixyb7axxbdkqx6cxy00p4np4j91kpm492rf4s25b";
  })

  (fetchNuGet {
    name = "system.security.cryptography.primitives";
    version = "4.0.0";
    sha256 = "0i7cfnwph9a10bm26m538h5xcr8b36jscp9sy1zhgifksxz4yixh";
  })

  (fetchNuGet {
    name = "tmds.dbus";
    version = "0.9.0";
    sha256 = "0vvx6sg8lxm23g5jvm5wh2gfs95mv85vd52lkq7d1b89bdczczf3";
  })

  (fetchNuGet {
    name = "runtime.any.system.threading.tasks";
    version = "4.3.0";
    sha256 = "03mnvkhskbzxddz4hm113zsch1jyzh2cs450dk3rgfjp8crlw1va";
  })

  (fetchNuGet {
    name = "humanizer.core";
    version = "2.2.0";
    sha256 = "08mzg65y9d3zvq16rsmpapcdan71ggq2mpks6k777h3wlm2sh3p5";
  })

  (fetchNuGet {
    name = "system.componentmodel.annotations";
    version = "4.5.0";
    sha256 = "1jj6f6g87k0iwsgmg3xmnn67a14mq88np0l1ys5zkxhkvbc8976p";
  })

  (fetchNuGet {
    name = "runtime.unix.system.private.uri";
    version = "4.3.0";
    sha256 = "1jx02q6kiwlvfksq1q9qr17fj78y5v6mwsszav4qcz9z25d5g6vk";
  })

  (fetchNuGet {
    name = "skiasharp.nativeassets.linux";
    version = "2.80.2";
    sha256 = "1951b7rpisaymb37j846jq01pjd05l4fjlnf56blh33ihxyj2jzi";
  })

  (fetchNuGet {
    name = "system.composition.attributedmodel";
    version = "1.0.31";
    sha256 = "1ipyb86hvw754kmk47vjmzyilvj5hymg9nqabz70sbgsz1fygrdv";
  })

  (fetchNuGet {
    name = "runtime.opensuse.42.1-x64.runtime.native.system.security.cryptography.openssl";
    version = "4.3.0";
    sha256 = "1klrs545awhayryma6l7g2pvnp9xy4z0r1i40r80zb45q3i9nbyf";
  })

  (fetchNuGet {
    name = "avalonia.remote.protocol";
    version = "0.10.0";
    sha256 = "0527966nmjdhzdq6dwhjhyc79kmy56ymhxsmrp344jn43d67kmnr";
  })

  (fetchNuGet {
    name = "runtime.fedora.23-x64.runtime.native.system.security.cryptography.openssl";
    version = "4.3.0";
    sha256 = "0hkg03sgm2wyq8nqk6dbm9jh5vcq57ry42lkqdmfklrw89lsmr59";
  })

  (fetchNuGet {
    name = "system.composition.hosting";
    version = "1.0.31";
    sha256 = "1f1bnk3j7ndx9r7zpzibmrhw78clys1pspl20j2dhnmkiwhl23vy";
  })

  (fetchNuGet {
    name = "runtime.win.system.io.filesystem";
    version = "4.3.0";
    sha256 = "1c01nklbxywszsbfaxc76hsz7gdxac3jkphrywfkdsi3v4bwd6g8";
  })

  (fetchNuGet {
    name = "system.diagnostics.tools";
    version = "4.3.0";
    sha256 = "0in3pic3s2ddyibi8cvgl102zmvp9r9mchh82ns9f0ms4basylw1";
  })

  (fetchNuGet {
    name = "runtime.win.system.runtime.extensions";
    version = "4.3.0";
    sha256 = "1700famsxndccfbcdz9q14qb20p49lax67mqwpgy4gx3vja1yczr";
  })

  (fetchNuGet {
    name = "system.threading.overlapped";
    version = "4.3.0";
    sha256 = "1nahikhqh9nk756dh8p011j36rlcp1bzz3vwi2b4m1l2s3vz8idm";
  })

  (fetchNuGet {
    name = "system.componentmodel.composition";
    version = "4.5.0";
    sha256 = "196ihd17in5idnxq5l5xvpa1fhqamnihjg3mcmv1k4n8bjrrj5y7";
  })

  (fetchNuGet {
    name = "system.diagnostics.tracing";
    version = "4.3.0";
    sha256 = "1m3bx6c2s958qligl67q7grkwfz3w53hpy7nc97mh6f7j5k168c4";
  })

  (fetchNuGet {
    name = "system.diagnostics.tracing";
    version = "4.1.0";
    sha256 = "1d2r76v1x610x61ahfpigda89gd13qydz6vbwzhpqlyvq8jj6394";
  })

  (fetchNuGet {
    name = "system.composition.convention";
    version = "1.0.31";
    sha256 = "00gqcdrql7vhynxh4xq0s9j5nw27kghmn2n773v7lhzjh3ash18r";
  })

  (fetchNuGet {
    name = "icsharpcode.decompiler";
    version = "6.2.1.6137";
    sha256 = "14gjrybpv277vcyjgygfarb2vqvhc5cnf1a3ba6jm43wvc9prag9";
  })

  (fetchNuGet {
    name = "nuget.versioning";
    version = "4.2.0";
    sha256 = "1mx7b4hgdhl6g7yzp3lknmkxkyfjw372nxpsmvdznwhg214iz2d3";
  })

  (fetchNuGet {
    name = "system.composition.runtime";
    version = "1.0.31";
    sha256 = "1shfybfzsn4g6aim4pggb5ha31g0fz2kkk0519c4vj6m166g39ws";
  })

  (fetchNuGet {
    name = "runtime.any.system.text.encoding.extensions";
    version = "4.3.0";
    sha256 = "0lqhgqi0i8194ryqq6v2gqx0fb86db2gqknbm0aq31wb378j7ip8";
  })

  (fetchNuGet {
    name = "system.buffers";
    version = "4.3.0";
    sha256 = "0fgns20ispwrfqll4q1zc1waqcmylb3zc50ys9x8zlwxh9pmd9jy";
  })

  (fetchNuGet {
    name = "system.buffers";
    version = "4.4.0";
    sha256 = "183f8063w8zqn99pv0ni0nnwh7fgx46qzxamwnans55hhs2l0g19";
  })

  (fetchNuGet {
    name = "runtime.unix.system.diagnostics.debug";
    version = "4.3.0";
    sha256 = "1lps7fbnw34bnh3lm31gs5c0g0dh7548wfmb8zz62v0zqz71msj5";
  })

  (fetchNuGet {
    name = "system.reactive";
    version = "5.0.0";
    sha256 = "1lafmpnadhiwxyd543kraxa3jfdpm6ipblxrjlibym9b1ykpr5ik";
  })

  (fetchNuGet {
    name = "system.io.filesystem.primitives";
    version = "4.3.0";
    sha256 = "0j6ndgglcf4brg2lz4wzsh1av1gh8xrzdsn9f0yznskhqn1xzj9c";
  })

  (fetchNuGet {
    name = "newtonsoft.json";
    version = "9.0.1";
    sha256 = "0mcy0i7pnfpqm4pcaiyzzji4g0c8i3a5gjz28rrr28110np8304r";
  })

  (fetchNuGet {
    name = "system.runtime.extensions";
    version = "4.3.0";
    sha256 = "1ykp3dnhwvm48nap8q23893hagf665k0kn3cbgsqpwzbijdcgc60";
  })

  (fetchNuGet {
    name = "system.numerics.vectors";
    version = "4.4.0";
    sha256 = "0rdvma399070b0i46c4qq1h2yvjj3k013sqzkilz4bz5cwmx1rba";
  })

  (fetchNuGet {
    name = "system.numerics.vectors";
    version = "4.5.0";
    sha256 = "1kzrj37yzawf1b19jq0253rcs8hsq1l2q8g69d7ipnhzb0h97m59";
  })

  (fetchNuGet {
    name = "harfbuzzsharp";
    version = "2.6.1.7";
    sha256 = "0xm4dr6cs5n1ywbbpp1jrxfk8rn1iy61kdm29kb6bqj1q0gv8zyv";
  })

  (fetchNuGet {
    name = "microsoft.netcore.app.runtime.osx-x64";
    version = "3.1.8";
    sha256 = "1iabp5czrz9wmsqcl0gi8r580vlhky3aak5ndz9fw065wlsqpv7w";
  })

  (fetchNuGet {
    name = "microsoft.csharp";
    version = "4.3.0";
    sha256 = "0gw297dgkh0al1zxvgvncqs0j15lsna9l1wpqas4rflmys440xvb";
  })

  (fetchNuGet {
    name = "system.reflection.emit";
    version = "4.3.0";
    sha256 = "11f8y3qfysfcrscjpjym9msk7lsfxkk4fmz9qq95kn3jd0769f74";
  })

  (fetchNuGet {
    name = "system.reflection.emit";
    version = "4.7.0";
    sha256 = "121l1z2ypwg02yz84dy6gr82phpys0njk7yask3sihgy214w43qp";
  })

  (fetchNuGet {
    name = "system.diagnostics.debug";
    version = "4.3.0";
    sha256 = "00yjlf19wjydyr6cfviaph3vsjzg3d5nvnya26i2fvfg53sknh3y";
  })

  (fetchNuGet {
    name = "runtime.debian.8-x64.runtime.native.system.security.cryptography.openssl";
    version = "4.3.0";
    sha256 = "16rnxzpk5dpbbl1x354yrlsbvwylrq456xzpsha1n9y3glnhyx9d";
  })

#  (fetchNuGet {
#    name = "microsoft.diasymreader.converter.xml";
#    version = "1.1.0-beta2-21110-01";
#    sha256 = "";
#  })

  (fetchNuGet {
    name = "system.composition";
    version = "1.0.31";
    sha256 = "0aa27jz73qb0xm6dyxv22qhfrmyyqjyn2dvvsd9asi82lcdh9i61";
  })

  (fetchNuGet {
    name = "runtime.ubuntu.16.10-x64.runtime.native.system.security.cryptography.openssl";
    version = "4.3.0";
    sha256 = "1p4dgxax6p7rlgj4q73k73rslcnz4wdcv8q2flg1s8ygwcm58ld5";
  })

  (fetchNuGet {
    name = "runtime.any.system.reflection.primitives";
    version = "4.3.0";
    sha256 = "0x1mm8c6iy8rlxm8w9vqw7gb7s1ljadrn049fmf70cyh42vdfhrf";
  })

  (fetchNuGet {
    name = "microsoft.codeanalysis.csharp.scripting";
    version = "3.4.0";
    sha256 = "1h2f0z9xnw987x8bydka1sd42ijqjx973md6v1gvpy1qc6ad244g";
  })

  (fetchNuGet {
    name = "microsoft.win32.primitives";
    version = "4.0.1";
    sha256 = "1n8ap0cmljbqskxpf8fjzn7kh1vvlndsa75k01qig26mbw97k2q7";
  })

  (fetchNuGet {
    name = "runtime.any.system.diagnostics.tools";
    version = "4.3.0";
    sha256 = "1wl76vk12zhdh66vmagni66h5xbhgqq7zkdpgw21jhxhvlbcl8pk";
  })

  (fetchNuGet {
    name = "system.io";
    version = "4.3.0";
    sha256 = "05l9qdrzhm4s5dixmx68kxwif4l99ll5gqmh7rqgw554fx0agv5f";
  })

  (fetchNuGet {
    name = "runtime.win.microsoft.win32.primitives";
    version = "4.3.0";
    sha256 = "0k1h8nnp1s0p8rjwgjyj1387cc1yycv0k22igxc963lqdzrx2z36";
  })

  (fetchNuGet {
    name = "runtime.any.system.io";
    version = "4.3.0";
    sha256 = "0l8xz8zn46w4d10bcn3l4yyn4vhb3lrj2zw8llvz7jk14k4zps5x";
  })

  (fetchNuGet {
    name = "avalonia.angle.windows.natives";
    version = "2.1.0.2020091801";
    sha256 = "04jm83cz7vkhhr6n2c9hya2k8i2462xbf6np4bidk55as0jdq43a";
  })

  (fetchNuGet {
    name = "avalonia.diagnostics";
    version = "0.10.0";
    sha256 = "1fw6bbbm7g1w4s6hyskkx7p59i3p965bly8p50dmfs31ls01jfrx";
  })

  (fetchNuGet {
    name = "mono.cecil";
    version = "0.11.3";
    sha256 = "0xcx7pk9y2n1hr15c0l1balzi69kw5gy8dk7sb8jwqyyvm35q4j3";
  })

  (fetchNuGet {
    name = "system.io.filesystem";
    version = "4.0.1";
    sha256 = "0kgfpw6w4djqra3w5crrg8xivbanh1w9dh3qapb28q060wb9flp1";
  })

  (fetchNuGet {
    name = "microsoft.aspnetcore.app.runtime.linux-x64";
    version = "3.1.8";
    sha256 = "140zr3nwkmf6xc52gq4iz6ycyh95fxy0jpgn637pkd9z423z8135";
  })

  (fetchNuGet {
    name = "system.runtime";
    version = "4.3.0";
    sha256 = "066ixvgbf2c929kgknshcxqj6539ax7b9m570cp8n179cpfkapz7";
  })

  (fetchNuGet {
    name = "system.globalization";
    version = "4.3.0";
    sha256 = "1cp68vv683n6ic2zqh2s1fn4c2sd87g5hpp6l4d4nj4536jz98ki";
  })

  (fetchNuGet {
    name = "microsoft.diasymreader";
    version = "1.3.0";
    sha256 = "1nswah83z3pfibaqmjd8y96fgnkrak8005qqinc8nqs5mpkf5pfb";
  })

  (fetchNuGet {
    name = "microsoft.netcore.app.runtime.linux-x64";
    version = "3.1.8";
    sha256 = "1bv9n9wzsqf9g8h6z10p61xkcx8ad4nnip83qv8yyfvhr4kdmbsa";
  })

  (fetchNuGet {
    name = "avalonia.markup.xaml.loader";
    version = "0.10.0";
    sha256 = "05wdf7gc5v03gia29srq44g49ijqg45vygargm087m2s63i134jk";
  })

  (fetchNuGet {
    name = "runtime.unix.system.runtime.extensions";
    version = "4.3.0";
    sha256 = "0pnxxmm8whx38dp6yvwgmh22smknxmqs5n513fc7m4wxvs1bvi4p";
  })

  (fetchNuGet {
    name = "system.composition.typedparts";
    version = "1.0.31";
    sha256 = "1m4j19zx50lbbdx1xxbgpsd1dai2r3kzkyapw47kdvkb89qjkl63";
  })

  (fetchNuGet {
    name = "nuget.client";
    version = "4.2.0";
    sha256 = "1s34w7yi0xcm0hi9g32xx9njy52hjkh4gbizldvpp48mkki6bfrl";
  })

  (fetchNuGet {
    name = "nuget.repositories";
    version = "4.2.0";
    sha256 = "0w18lj7q85grdd563p429cg0pg8hi9xmsrr4pzskha139vhfq0lp";
  })

  (fetchNuGet {
    name = "system.objectmodel";
    version = "4.3.0";
    sha256 = "191p63zy5rpqx7dnrb3h7prvgixmk168fhvvkkvhlazncf8r3nc2";
  })

  (fetchNuGet {
    name = "system.collections";
    version = "4.3.0";
    sha256 = "19r4y64dqyrq6k4706dnyhhw7fs24kpp3awak7whzss39dakpxk9";
  })

  (fetchNuGet {
    name = "microsoft.win32.registry";
    version = "4.0.0";
    sha256 = "1spf4m9pikkc19544p29a47qnhcd885klncahz133hbnyqbkmz9k";
  })

  (fetchNuGet {
    name = "system.resources.resourcemanager";
    version = "4.3.0";
    sha256 = "0sjqlzsryb0mg4y4xzf35xi523s4is4hz9q4qgdvlvgivl7qxn49";
  })

  (fetchNuGet {
    name = "system.runtime.interopservices.windowsruntime";
    version = "4.3.0";
    sha256 = "0bpsy91yqm2ryp5y9li8p6yh4yrxcvg9zvm569ifw25rpy67bgp9";
  })

  (fetchNuGet {
    name = "system.threading.tasks.dataflow";
    version = "4.6.0";
    sha256 = "0a1davr71wssyn4z1hr75lk82wqa0daz0vfwkmg1fm3kckfd72k1";
  })

  (fetchNuGet {
    name = "system.runtime.compilerservices.unsafe";
    version = "4.6.0";
    sha256 = "0xmzi2gpbmgyfr75p24rqqsba3cmrqgmcv45lsqp5amgrdwd0f0m";
  })

  (fetchNuGet {
    name = "system.collections.immutable";
    version = "1.5.0";
    sha256 = "1d5gjn5afnrf461jlxzawcvihz195gayqpcfbv6dd7pxa9ialn06";
  })

  (fetchNuGet {
    name = "system.text.regularexpressions";
    version = "4.1.0";
    sha256 = "1mw7vfkkyd04yn2fbhm38msk7dz2xwvib14ygjsb8dq2lcvr18y7";
  })

  (fetchNuGet {
    name = "runtime.osx.10.10-x64.runtime.native.system.security.cryptography.openssl";
    version = "4.3.0";
    sha256 = "0zcxjv5pckplvkg0r6mw3asggm7aqzbdjimhvsasb0cgm59x09l3";
  })

  (fetchNuGet {
    name = "system.text.encoding";
    version = "4.3.0";
    sha256 = "1f04lkir4iladpp51sdgmis9dj4y8v08cka0mbmsy0frc9a4gjqr";
  })

  (fetchNuGet {
    name = "runtime.ubuntu.14.04-x64.runtime.native.system.security.cryptography.openssl";
    version = "4.3.0";
    sha256 = "160p68l2c7cqmyqjwxydcvgw7lvl1cr0znkw8fp24d1by9mqc8p3";
  })

  (fetchNuGet {
    name = "nuget.runtimemodel";
    version = "4.2.0";
    sha256 = "0k59ww2zk56bsqici62zn59h19wp4ai9v395hy5mq6wl6mz6qaax";
  })

  (fetchNuGet {
    name = "harfbuzzsharp.nativeassets.linux";
    version = "2.6.1.7";
    sha256 = "1slackrhcwsjn3f6sa0nlrcynzmx5pbqv8j33l9w6z9w7ssq4wkn";
  })

  (fetchNuGet {
    name = "system.security.cryptography.algorithms";
    version = "4.2.0";
    sha256 = "148s9g5dgm33ri7dnh19s4lgnlxbpwvrw2jnzllq2kijj4i4vs85";
  })

  (fetchNuGet {
    name = "microsoft.aspnetcore.app.runtime.win-x64";
    version = "3.1.8";
    sha256 = "05sv39b6sc8fhh3m8kwq0lp58n8mrv5ivxa60rfqk6v6i7gs8b0f";
  })

  (fetchNuGet {
    name = "runtime.any.system.reflection";
    version = "4.3.0";
    sha256 = "02c9h3y35pylc0zfq3wcsvc5nqci95nrkq0mszifc0sjx7xrzkly";
  })

  (fetchNuGet {
    name = "runtime.fedora.24-x64.runtime.native.system.security.cryptography.openssl";
    version = "4.3.0";
    sha256 = "0c2p354hjx58xhhz7wv6div8xpi90sc6ibdm40qin21bvi7ymcaa";
  })

  (fetchNuGet {
    name = "microsoft.codeanalysis.common";
    version = "3.4.0";
    sha256 = "12rn6gl4viycwk3pz5hp5df63g66zvba4hnkwr3f0876jj5ivmsw";
  })

  (fetchNuGet {
    name = "runtime.any.system.text.encoding";
    version = "4.3.0";
    sha256 = "0aqqi1v4wx51h51mk956y783wzags13wa7mgqyclacmsmpv02ps3";
  })

  (fetchNuGet {
    name = "system.memory";
    version = "4.5.3";
    sha256 = "0naqahm3wljxb5a911d37mwjqjdxv9l0b49p5dmfyijvni2ppy8a";
  })

  (fetchNuGet {
    name = "system.collections.concurrent";
    version = "4.0.12";
    sha256 = "07y08kvrzpak873pmyxs129g1ch8l27zmg51pcyj2jvq03n0r0fc";
  })

  (fetchNuGet {
    name = "microsoft.codeanalysis.scripting.common";
    version = "3.4.0";
    sha256 = "195gqnpwqkg2wlvk8x6yzm7byrxfq9bki20xmhf6lzfsdw3z4mf2";
  })

  (fetchNuGet {
    name = "runtime.any.system.collections";
    version = "4.3.0";
    sha256 = "0bv5qgm6vr47ynxqbnkc7i797fdi8gbjjxii173syrx14nmrkwg0";
  })

  (fetchNuGet {
    name = "jetbrains.annotations";
    version = "10.3.0";
    sha256 = "1grdx28ga9fp4hwwpwv354rizm8anfq4lp045q4ss41gvhggr3z8";
  })

  (fetchNuGet {
    name = "nuget.common";
    version = "4.2.0";
    sha256 = "0j8bk9nkaxcf52az2rxhx27rqn7hs9mmw0p48i0x7g8i9b40wvwc";
  })

  (fetchNuGet {
    name = "system.valuetuple";
    version = "4.3.0";
    sha256 = "1227k7fxbxapq7dms4lvwwjdf3pr1jcsmhy2nzzhj6g6hs530hxn";
  })

  (fetchNuGet {
    name = "system.valuetuple";
    version = "4.5.0";
    sha256 = "00k8ja51d0f9wrq4vv5z2jhq8hy31kac2rg0rv06prylcybzl8cy";
  })

  (fetchNuGet {
    name = "system.xml.readerwriter";
    version = "4.0.11";
    sha256 = "0c6ky1jk5ada9m94wcadih98l6k1fvf6vi7vhn1msjixaha419l5";
  })

  (fetchNuGet {
    name = "runtime.any.system.resources.resourcemanager";
    version = "4.3.0";
    sha256 = "03kickal0iiby82wa5flar18kyv82s9s6d4xhk5h4bi5kfcyfjzl";
  })

  (fetchNuGet {
    name = "system.dynamic.runtime";
    version = "4.3.0";
    sha256 = "1d951hrvrpndk7insiag80qxjbf2y0y39y8h5hnq9612ws661glk";
  })

  (fetchNuGet {
    name = "netstandard.library";
    version = "2.0.3";
    sha256 = "1fn9fxppfcg4jgypp2pmrpr6awl3qz1xmnri0cygpkwvyx27df1y";
  })

  (fetchNuGet {
    name = "system.runtime.interopservices";
    version = "4.3.0";
    sha256 = "00hywrn4g7hva1b2qri2s6rabzwgxnbpw9zfxmz28z09cpwwgh7j";
  })

]
