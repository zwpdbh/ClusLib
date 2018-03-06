#include "cl/utilities/dendrogram.hpp"
#include <ctime>
#include <fstream>
#include <iomanip>

namespace ClusLib {
Dendrogram::Dendrogram() : _x1(0), _y1(0), _x2(100), _y2(100) {}

void Dendrogram::setbox(Real x1, Real y1, Real x2, Real y2) {
    _x1 = x1;
    _y1 = y1;
    _x2 = x2;
    _y2 = y2;
}

void Dendrogram::drawDot(Real x, Real y) {
    _ss << "% Dot\n";
    _ss << " 3 slw ";
    _ss << " 1 slc ";
    _ss << " 0 slj ";
    _ss << "n_" << x << " " << y << " "
        << "m " << x << " " << y << " "
        << "1 0.000 0.000 0.000 srgb stroke" << std::endl;
}

void Dendrogram::drawCircle(Real x, Real y, Real r) {
    _ss << "% Ellipse\n";
    _ss << " 0.5 slw ";
    _ss << " 1 slc ";
    _ss << " 0 slj " << std::endl;
    _ss << "gs " << x << " " << y << " tr";
    _ss << " n " << r << " 0 m 0 0 " << r << " 0.0 360.0 arc ";
    _ss << " 0.0000 0.0000 0.0000 srgb";
    _ss << " stroke gr" << std::endl;
}

void Dendrogram::drawLine(Real x1, Real y1, Real x2, Real y2) {
    _ss << "% Line\n";
    _ss << " 0.5 slw ";
    _ss << " 1 slc ";
    _ss << "n " << x1 << " " << y1 << " "
        << "m " << x2 << " " << y2 << " "
        << "1 0.0000 0.0000 0.0000 srgb stroke" << std::endl;
}

void Dendrogram::drawText(Real x, Real y, const std::string& txt) {
    _ss << "% Text\n";
    _ss << "gs /Times-Roman ff 8 scf sf";
    _ss << " " << x - 7 - txt.size() * 3 << " " << y - 3 << " m";
    _ss << " (" << txt << ")"
        << " 0.0000 0.0000 0.0000 srgb"
        << " sh gr" << std::endl;
}

void Dendrogram::save(const std::string& filename) const {
    std::ofstream file(filename.c_str());

    file << "%!PS-Adobe-2.0 EPSF-2.0" << std::endl;
    file << "%%Title: " << filename << std::endl;
    file << "%%Creator: ClusLib " << std::endl;
    file << "%%CreationDate: today" << std::endl;
    file << "%%BoundingBox: " << std::setprecision(8) << _x1 << " " << _y1
         << " " << _x2 << " " << _y2 << std::endl;
    file << "%Magnification: 1.0000" << std::endl;
    file << "%%EndComments" << std::endl;
    file << std::endl;
    file << "/cp {closepath} bind def" << std::endl;
    file << "/ef {eofill} bind def" << std::endl;
    file << "/gr {grestore} bind def" << std::endl;
    file << "/gs {gsave} bind def" << std::endl;
    file << "/sa {save} bind def" << std::endl;
    file << "/rs {restore} bind def" << std::endl;
    file << "/l {lineto} bind def " << std::endl;
    file << "/m {moveto} bind def" << std::endl;
    file << "/rm {removeto} bind def" << std::endl;
    file << "/n {newpath} bind def" << std::endl;
    file << "/s {stroke} bind def" << std::endl;
    file << "/sh {show} bind def" << std::endl;
    file << "/slc {setlinecap} bind def" << std::endl;
    file << "/slj {setlinejoin} bind def " << std::endl;
    file << "/slw {setlinewidth} bind def" << std::endl;
    file << "/srgb {setrgbcolor} bind def" << std::endl;
    file << "/rot {rotate} bind def" << std::endl;
    file << "/sc {scale} bind def" << std::endl;
    file << "/sd {setdash} bind def" << std::endl;
    file << "/ff {findfont} bind def" << std::endl;
    file << "/sf {setfont} bind def" << std::endl;
    file << "/scf {scalefont} bind def" << std::endl;
    file << "/sw {stringwidth} bind def" << std::endl;
    file << "/sd {setdash} bind def" << std::endl;
    file << "/tr {translate} bind def" << std::endl;
    file << " 0.5 setlinewidth" << std::endl;
    file << _ss.str() << std::endl;
    file << "showpage" << std::endl;
    file << "%%Trailer" << std::endl;
    file << "%EOF" << std::endl;
    file.close();
}

} // namespace ClusLib